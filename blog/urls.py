from django.conf.urls import url,include
from markdownx.views import MarkdownifyView

urlpatterns = [
    url(r'^$','blog.views.index',name='home'),
    url(r'^article/(?P<page_number>\d+)?/','blog.views.article',name='article'),
    url(r'^movie/','blog.views.movieSearch'),
    url(r'^markdownify/$', MarkdownifyView.as_view(),name='markdownify'),

    url(r'^captcha/', include('captcha.urls')) # 这是生成验证码的图片
]