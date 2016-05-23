from django.contrib import admin
from . import models
from markdownx.admin import MarkdownxModelAdmin

# Register your models here.
admin.site.register(models.articles,MarkdownxModelAdmin)
admin.site.register(models.comments)
admin.site.register(models.system)
admin.site.register(models.movieList)