from blog.api.views import *
from django.urls import path

urlpatterns = [
    path("category/list/", CategoryList.as_view(), name="category-list"),
    path("category/<int:pk>", CategoryDetail.as_view(), name="category-detail"),
    path("list/", PostListAPIView.as_view(), name="post-list"),
    path("<int:pk>/post", UserPostList.as_view(), name="user-post"),
    path("<int:pk>", PostDetail.as_view(), name="post-detail"),
    path("role/<int:pk>", RoleDetail.as_view(), name="role-detail"),
    path("role/list", RoleList.as_view(), name="role-list"),
    path("<int:pk>/comment-list", PostCommentList.as_view(), name="post-comment-list"),
    path("comment/<int:pk>", CommentDetail.as_view(), name="detail-comment"),
]
