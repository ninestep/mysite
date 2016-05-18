from django.shortcuts import render,HttpResponse
from blog import models,forms
import re
from django.views.generic.edit import View


from markdownx.utils import markdownify
# Create your views here.
class CustomMarkdownifyView(View):

    def post(self, request, *args, **kwargs):
        compiled_markdown = markdownify(request.POST['content'])
        return HttpResponse(compiled_markdown)


def index(request):
    articles=models.articles.objects.order_by('-created','-edited')
    return  render(request,'index.html',locals())
def article(request,page_number):
    if request.method=='POST':
        form=forms.CommonForm(request.POST)
        if form.is_valid():
            human = True
            message=form.cleaned_data['message']
            aID=form.cleaned_data['articlesId']
            comment=models.comments(message=message,articlesId=aID)
            comment.save()
    allArticle=models.articles.objects.get(id=page_number)
    form=forms.CommonForm(initial={'articlesId':page_number})
    comments=allArticle.comments_set.all()
    return  render(request,'article.html',locals())
