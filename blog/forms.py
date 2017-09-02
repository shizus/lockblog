from django import forms
from .models import Post


# Basic for for creating/editing posts
class PostForm(forms.ModelForm):

    class Meta:
        model = Post
        fields = ('title', 'text',)