from blog.api.views import *
from django.urls import path

urlpatterns = [
    path("category/list/", CategoryList.as_view(), name="category-list"),
    path("category/<int:pk>", CategoryDetail.as_view(), name="category-detail"),
    # Get all of post
    path("list/", PostList.as_view(), name="post-list"),
    path("<int:pk>/post", UserPostList.as_view(), name="user-post"),
    # Get post detail coresspond post_id
    path("<int:pk>", PostDetail.as_view(), name="post-detail"),
    path("role/<int:pk>", RoleDetail.as_view(), name="role-detail"),
    path("role/list", RoleList.as_view(), name="role-list"),
    # Create comment coresspond post_id
    path(
        "<int:pk>/comments/create", CommentCreate.as_view(), name="post-comment-create"
    ),
    # Read all comments coresspond post_id
    path("<int:pk>/comments", PostCommentList.as_view(), name="post-comment-list"),
    # Read comment detail
    path("comment/<int:pk>", CommentDetail.as_view(), name="detail-comment"),
]
