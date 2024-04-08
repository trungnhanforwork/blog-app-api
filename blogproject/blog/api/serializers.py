from blog.models import Category, Comment, Post
from rest_framework import serializers


class CategorySerializer(serializers.ModelSerializer):

    class Meta:
        model = Category
        fields = "__all__"

        def validate_name(self, value):
            """
            Check if the category name already exists in the database.
            """
            if Category.objects.filter(name=value).exists():
                raise serializers.ValidationError(
                    "A category with this name already exists."
                )
            return value


class CommentSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField(read_only=True)

    class Meta:
        model = Comment
        exclude = ("post",)


class PostSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField(read_only=True)
    comments = serializers.StringRelatedField(many=True)

    class Meta:
        model = Post
        exclude = ("user",)
