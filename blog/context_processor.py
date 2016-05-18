#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Date    : 2015-10-31 14:26:26
# @Author  : Weizhong Tu (mail@tuweizhong.com)

from blog.models import articles


def lastList(request):
    list=articles.objects.order_by('-created')[:5]
    return {'lastList':list}

