# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-05-08 10:22
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='comments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.TextField(verbose_name='评论内容')),
                ('articlesId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blog.articles')),
            ],
        ),
        migrations.CreateModel(
            name='system',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20, verbose_name='网站名')),
                ('meteWorld', models.CharField(max_length=30, verbose_name='SEO词')),
                ('BriefIntroduction', models.TextField(verbose_name='简介')),
            ],
        ),
    ]
