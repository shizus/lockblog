from django.shortcuts import render
from .models import Post
from django.utils import timezone

# Create your views here.

def post_list(request):
    posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('published_date') ## lte in django means "less than or equal"
    return render(request, 'blog/post_list.html', {'posts': posts})