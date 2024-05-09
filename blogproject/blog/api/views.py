from rest_framework.decorators import api_view, permission_classes
from blog.api.permission import *
from blog.api.serializers import *
from blog.models import *
from django.shortcuts import get_object_or_404
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters, generics, status
from rest_framework.permissions import (
    IsAdminUser,
    IsAuthenticated,
    IsAuthenticatedOrReadOnly,
)
from rest_framework.response import Response
from rest_framework.views import APIView
# Create your views here: Class base view


# Category
class CategoryList(generics.ListCreateAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer


class CategoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    # permission_classes = [IsAdminUser]


# Comment
class CommentList(generics.ListAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


class CommentCreate(generics.CreateAPIView):
    serializer_class = CommentSerializer
    permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        pk = self.kwargs.get("pk")
        post = Post.objects.get(pk=pk)
        user = self.request.user
        serializer.save(post=post, user=user)


class CommentDetail(generics.RetrieveUpdateDestroyAPIView):
    permission_classes = [IsOwnerOrReadOnly]
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


class PostCommentList(generics.ListAPIView):
    serializer_class = CommentSerializer

    def get_queryset(self):
        pk = self.kwargs["pk"]

        # Check if the post with the given pk exists
        get_object_or_404(Post, pk=pk)

        # Fetch comments associated with the post
        return Comment.objects.filter(post=pk)


# Get all comment correspond to user id
class UserCommentList(generics.ListAPIView):
    serializer_class = Comment

    def get_queryset(self):
        pk = self.kwargs["pk"]
        return Comment.objects.filter(user=pk)


# Post
class PostList(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class PostCreate(generics.CreateAPIView):
    serializer_class = PostSerializer
    # permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        pk = self.kwargs.get("pk")
        user = self.request.user
        serializer.save(user=user)


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    permission_classes = [IsOwnerOrReadOnly]


class PostSearch(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    filter_backends = [filters.SearchFilter, DjangoFilterBackend]
    search_fields = ['title', 'content']
    
    def get_queryset(self):
        query = self.request.query_params.get('query', None)
        if query:
            queryset = self.queryset.filter(title__icontains=query) | self.queryset.filter(content__icontains=query)
            return queryset
        return self.queryset.none()

class PostVote(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, pk):
        return self.vote_or_unvote(request, pk, action="vote")

    def delete(self, request, pk):
        return self.vote_or_unvote(request, pk, action="unvote")

    def vote_or_unvote(self, request, pk, action):
        post = get_object_or_404(Post, pk=pk)
        user = request.user

        if action == "vote":
            # Check if the user has already voted for this post
            if post.voters.filter(id=user.id).exists():
                return Response({"message": "You have already voted for this post."}, status=status.HTTP_400_BAD_REQUEST)
            else:
                post.voters.add(user)
                post.vote += 1
                post.save()
                return Response({"message": "Vote added successfully."}, status=status.HTTP_201_CREATED)

        elif action == "unvote":
            # Check if the user has already voted for this post
            if post.voters.filter(id=user.id).exists():
                post.voters.remove(user)
                post.vote -= 1
                post.save()
                return Response({"message": "Vote removed successfully."}, status=status.HTTP_200_OK)
            else:
                return Response({"message": "You have not voted for this post."}, status=status.HTTP_400_BAD_REQUEST)

class UserPostList(generics.ListAPIView):
    serializer_class = PostSerializer

    def get_queryset(self):
        pk = self.kwargs["pk"]
        return Post.objects.filter(user=pk)

class PostVoteCount(APIView):
    def get(self, request, pk):
        post = get_object_or_404(Post, pk=pk)
        return Response({"vote_count": post.vote}, status=status.HTTP_200_OK)

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def post_voting_status(request, pk):
    post = get_object_or_404(Post, pk=pk)
    user = request.user

    has_voted = post.voters.filter(id=user.id).exists()

    return Response({'hasVoted': has_voted})