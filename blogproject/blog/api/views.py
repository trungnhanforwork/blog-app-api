from blog.api.serializers import (
    CategorySerializer,
    CommentSerializer,
    PostSerializer,
    RoleSerializer,
)
from blog.models import *
from rest_framework import generics
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


# Role
class RoleList(generics.ListCreateAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


class RoleDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


# Comment
class CommentList(generics.ListAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


class CommentCreate(generics.CreateAPIView):
    serializer_class = CommentSerializer

    def perform_create(self, serializer):
        pk = self.kwargs.get("pk")
        post = Post.objects.get(pk=pk)
        user = self.request.user
        serializer.save(post=post, user=user)


class CommentDetail(generics.RetrieveUpdateDestroyAPIView):
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

    def perform_create(self, serializer):
        pk = self.kwargs.get("pk")
        user = self.request.user
        serializer.save(author=user)


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class UserPostList(generics.ListAPIView):
    serializer_class = PostSerializer

    def get_queryset(self):
        pk = self.kwargs["pk"]
        return Post.objects.filter(author=pk)
