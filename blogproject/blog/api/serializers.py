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
        fields = ["user", "description", "created_at", "updated_at"]


class PostSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField(read_only=True)
    comments = serializers.StringRelatedField(many=True)
    # comments = serializers.StringRelatedField(many=True, allow_null=True, allow_empty=True)
    category_name = serializers.SerializerMethodField()

    def get_category_name(self, obj):
        return obj.category.name

    class Meta:
        model = Post
        fields = "__all__"
        # exclude = ("user",)
