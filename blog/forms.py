from django import forms
from blog import models

from captcha.fields import CaptchaField

class CommonForm(forms.ModelForm):

    captcha = CaptchaField() # 为生成的验证码图片，以及输入框
    class Meta:
        model=models.comments
        fields=['message','articlesId']
        widgets={
            'articlesId':forms.HiddenInput()
        }