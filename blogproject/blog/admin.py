from django.contrib import admin
from blog.models import Category, Role, Post

# Register your models here.
admin.site.register(Category)

admin.site.register(Role)
admin.site.register(Post)
