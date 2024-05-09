from blog.api.views import *
from django.urls import path

urlpatterns = [
    path("category/list/", CategoryList.as_view(), name="category-list"),
    path("category/<int:pk>/", CategoryDetail.as_view(), name="category-detail"),
    # Get all of post
    path("list/", PostList.as_view(), name="post-list"),
    # Create new post
    path("new/", PostCreate.as_view(), name="post-add"),
    # Get post coresspond user_id
    path("<int:pk>/post/", UserPostList.as_view(), name="user-post"),
    # Get post detail coresspond post_id
    path("<int:pk>/", PostDetail.as_view(), name="post-detail"),
    # Create comment coresspond post_id
    path(
        "<int:pk>/comments/create/", CommentCreate.as_view(), name="post-comment-create"
    ),
    # Read all comments coresspond post_id
    path("<int:pk>/comments/", PostCommentList.as_view(), name="post-comment-list"),
    # Vote for post with id 
    path("<int:pk>/vote/", PostVote.as_view(), name="post-vote"),
    # Check vote status
    path("<int:pk>/voting-status/", post_voting_status, name="voting-status"),
    # Vote count
    path("<int:pk>/vote-count/", PostVoteCount.as_view(), name="post-vote-count"),
    # Read comment detail
    path("comment/<int:pk>/", CommentDetail.as_view(), name="detail-comment"),
    path("search/", PostSearch.as_view(), name="post-search"),
]
