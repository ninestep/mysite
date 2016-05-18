from django.http import HttpResponse
from django.views.generic.edit import View

from markdownx.utils import markdownify

class CustomMarkdownifyView(View):

    def post(self, request, *args, **kwargs):
        compiled_markdown = markdownify(request.POST['content'])
        return HttpResponse(compiled_markdown)