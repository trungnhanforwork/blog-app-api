from blog.api.permission import *
from blog.api.serializers import CategorySerializer, CommentSerializer, PostSerializer
from blog.models import *
from rest_framework import generics
from rest_framework.permissions import (
    IsAdminUser,
    IsAuthenticated,
    IsAuthenticatedOrReadOnly,
)

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
    permission_classes = [IsCommentUserOrReadOnly]
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


class PostCommentList(generics.ListAPIView):
    serializer_class = CommentSerializer

    def get_queryset(self):
        pk = self.kwargs["pk"]
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


class UserPostList(generics.ListAPIView):
    serializer_class = PostSerializer

    def get_queryset(self):
        pk = self.kwargs["pk"]
        return Post.objects.filter(user=pk)
