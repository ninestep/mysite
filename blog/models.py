from django.db import models
from markdownx.models import MarkdownxField

# Create your models here.
class articles(models.Model):
    '''
        文章详情
    '''
    title=models.CharField('文章名',max_length=50)
    content=MarkdownxField('文章内容')
    keys=models.CharField('关键词',max_length=50)
    created=models.DateField('添加时间',auto_now_add=True)
    edited=models.DateTimeField('修改时间',auto_now=True)

    def __str__(self):
        return self.title

class comments(models.Model):
    '''
        评论内容
    '''
    message=MarkdownxField('评论内容')
    articlesId=models.ForeignKey(articles)
    def __str__(self):
        return self.articlesId.title

class system(models.Model):
    '''
        网站系统信息
    '''
    title=models.CharField('网站名',max_length=20)
    meteWorld=models.CharField('SEO词',max_length=30)
    BriefIntroduction=models.TextField('简介')

class movieList(models.Model):
    title=models.CharField('电影网站',max_length=20)
    url=models.CharField('网址',max_length=50)
    message=models.CharField('备注',max_length=50)