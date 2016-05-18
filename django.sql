-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-05-13 22:05:38
-- 服务器版本： 5.5.44-0+deb8u1
-- PHP Version: 5.6.19-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add articles', 7, 'add_articles'),
(20, 'Can change articles', 7, 'change_articles'),
(21, 'Can delete articles', 7, 'delete_articles'),
(22, 'Can add comments', 8, 'add_comments'),
(23, 'Can change comments', 8, 'change_comments'),
(24, 'Can delete comments', 8, 'delete_comments'),
(25, 'Can add system', 9, 'add_system'),
(26, 'Can change system', 9, 'change_system'),
(27, 'Can delete system', 9, 'delete_system');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$24000$4KhZtxeFVJmk$CJvCt8TMVG3oqLGrA1mbluF52hoPOGL0rN2izR+ywB0=', '2016-05-07 08:30:52', 1, 'pi', '', '', 'pi@admin.com', 1, 1, '2016-05-07 08:29:24');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `blog_articles`
--

CREATE TABLE `blog_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `keys` varchar(50) NOT NULL,
  `created` date NOT NULL,
  `edited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_articles`
--

INSERT INTO `blog_articles` (`id`, `title`, `content`, `keys`, `created`, `edited`) VALUES
(1, '测试文章1', '测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1测试内容1', '实打实的', '2016-05-05', '2016-05-07 12:07:21'),
(2, '测试文章2', '###你好\r\n##markdown测试\r\n![](/media/markdownx/7376b5d7-25cd-4613-b79e-c6e0ae3171c6.jpg)', '实打实大苏打', '2016-05-06', '2016-05-09 01:15:01'),
(3, '使用mod_wsgi在Apache上部署Django项目', '由于对Apache的不熟悉，部署Django项目时遇到了一些问题，经过搜索终于解决了。记录下来，以供参考。\r\n\r\n本文的环境为Ubuntu 14.04，Python 3.4，Django 1.7。\r\n\r\n文中Django项目名称为 MyProj，主机名为 domain.com，Web文件目录为 **/var/www**，Django项目根目录为 MyProj，所谓的项目根目录，是指执行 **django-admin.py startproject**命令创建的以项目名字命名的目录，即该目录下有manage.py文件。\r\nMyProj目录位于 **/var/www/domain.com**目录下。\r\n\r\n安装\r\n\r\n以下命令完成Apache与mod_wsgi的安装。\r\n\r\nShell\r\n\r\n    sudo apt-get install apache2\r\n\r\n    sudo apt-get install libapache2-mod-wsgi-py3\r\n\r\n创建虚拟主机与WSGI文件：\r\n\r\n在Apache上部署Django项目的关键，是让Apache知道根据特定的请求寻找特定的wsgi文件，由wsgi文件告诉mod_wsgi如何处理这个请求。\r\n\r\n创建Apache的虚拟主机文件 ** /etc/apache2/sites-available/domain.com.conf **，内容如下：\r\n\r\nXHTML\r\n    \r\n    <VirtualHost *:80>\r\n        ServerName domain.com\r\n        WSGIScriptAlias / /var/www/domain.com/MyProj.wsgi\r\n    </VirtualHost>\r\n这个文件告诉了Apache应该将请求转发给mod_wsgi模块。下面将创建wsgi文件告诉mod_wsgi模块如何处理该请求。\r\n\r\nwsgi文件位于** /var/www/domain/MyProj.wsgi**，内容如下：\r\n\r\nPython\r\n\r\n    import os\r\n    import sys  \r\n    sys.path.append(''/var/www/domain/MyProj/'')\r\n    os.environ[''DJANGO_SETTINGS_MODULE''] = ''MyProj.settings''\r\n    # import django.core.handlers.wsgi\r\n    # application = django.core.handlers.wsgi.WSGIHandler()\r\n    from django.core.wsgi import get_wsgi_application\r\n    application = get_wsgi_application()\r\n这里要注意被注释掉的两行代码，网上找到的配置的例子都是用的这两句，但是在该版本的Django上报错，替换为后面良好代码后问题解决(见参考链接)。\r\n\r\n接下来，在Apache中启用该虚拟主机，并重新加载Apache。命令如下：\r\n\r\nShell\r\n    \r\n    sudo a2ensite domain.com\r\n    sudo /etc/init.d/apache2 reload\r\n配置Django的静态内容\r\n\r\n在虚拟主机的配置文件中添加与Django静态文件目录相关的配置。\r\n\r\nShell\r\n\r\n    <VirtualHost *:80>\r\n        ServerName domain.com\r\n        WSGIScriptAlias / /var/www/domain.com/MyProj.wsgi\r\n        Alias /static/ /var/www/domain.com/static/\r\n        <Location "/static">\r\n            Options -Indexes\r\n        </Location>\r\n    </VirtualHost>\r\n在Django项目的settings.py中设置相关变量：\r\n\r\nPython\r\n\r\n    MEDIA_ROOT = ''/var/www/domain.com/static/''\r\n    MEDIA_URL = ''/static/''\r\n重新加载Apache服务器使修改生效：\r\n\r\nShell\r\n    \r\n    sudo /etc/init.d/apache2 reload\r\n至此，在Apache上部署Django项目所需的最基本配置已经完成了。\r\n\r\n参考链接\r\n\r\n<https://www.digitalocean.com/community/tutorials/using-mod_wsgi-to-serve-applications-on-ubuntu-12-04>\r\n\r\n<https://docs.djangoproject.com/en/1.7/howto/deployment/wsgi/modwsgi/>\r\n\r\n<http://stackoverflow.com/questions/26083761/django-rest-mod-wsgi-and-apache-integration-problems>', 'django,apache,mod_swgi', '2016-05-13', '2016-05-13 07:08:55'),
(4, 'Django 上下文渲染器', '有时候我们想把一个变量在多个模板之间共用，这时候就可以用 Django 上下文渲染器。\r\n\r\n##一，初识上下文渲染器\r\n我们从视图函数说起，在 views.py 中返回字典在模板中使用:\r\n\r\n    from django.shortcuts import render\r\n     \r\n    def home(request):\r\n        return render(request, ''home.html'', {''info'': ''Welcome to ziqiangxuetang.com !''})\r\n这样我们就可以在模板中使用 info 这个变量了。\r\n\r\n    {{ info }}\r\n模板对应的地方就会显示：Welcome to ziqiangxuetang.com !\r\n\r\n但是如果我们有一个变量，比如用户的IP，想显示在每个网页上。再比如显示所有的栏目信息在每个网页上，该怎么做呢？\r\n\r\n一种方法是用死代码，直接把栏目固定写在 模块中，这个对于不经常变动的来说也是一个办法，简单高效。但是要是用户的IP这样的因人而异的，或者经常变动的，我们不得不用其它的办法了。\r\n\r\n\r\n\r\n由于上下文渲染器API在Django 1.8 时发生了变化，被移动到了 tempate 文件夹下，所以讲解的时候分两种，一种是 Django 1.8 及以后的，和Django 1.7及以前的。\r\n\r\n我们来看Django官方自带的小例子：\r\n\r\nDjango 1.8 版本：\r\n\r\ndjango.template.context_processors 中有这样一个函数\r\n\r\n    \r\n    def request(request):    \r\n        return {''request'': request}\r\nDjango 1.7 及以前的代码在这里：django.core.context_processors.request 函数是一样的。\r\n\r\n\r\n\r\n在settings.py 中：\r\n\r\nDjango 1.8 版本 settings.py:\r\n    \r\n    TEMPLATES = [\r\n        {\r\n            ''BACKEND'': ''django.template.backends.django.DjangoTemplates'',\r\n            ''DIRS'': [],\r\n            ''APP_DIRS'': True,\r\n            ''OPTIONS'': {\r\n                ''context_processors'': [\r\n                    ''django.template.context_processors.debug'',\r\n                    ''django.template.context_processors.request'',\r\n                    ''django.contrib.auth.context_processors.auth'',\r\n                    ''django.contrib.messages.context_processors.messages'',\r\n                ],\r\n            },\r\n        },\r\n    ]\r\n\r\n\r\nDjango 1.7 版本 settings.py 默认是这样的：\r\n    \r\n    TEMPLATE_CONTEXT_PROCESSORS = (\r\n        "django.contrib.auth.context_processors.auth",\r\n        "django.core.context_processors.debug",\r\n        "django.core.context_processors.i18n",\r\n        "django.core.context_processors.media",\r\n        "django.core.context_processors.static",\r\n        "django.core.context_processors.tz",\r\n        "django.contrib.messages.context_processors.messages"\r\n    )\r\n我们可以手动添加 request 的渲染器\r\n    \r\n    TEMPLATE_CONTEXT_PROCESSORS = (\r\n        ...\r\n        "django.core.context_processors.request",\r\n        ...\r\n    )\r\n\r\n\r\n这里的 context_processors 中放了一系列的 渲染器，上下文渲染器 其实就是函数返回字典，这些值可以用在模板中。\r\n\r\nrequest 函数就是在返回一个字典，每一个模板中都可以使用这个字典中提供的 request 变量。\r\n\r\n比如 在template 中 获取当前访问的用户的用户名：\r\n\r\n\r\n    User Name: {{ request.user.username }}  \r\n##二，动手写个上下文渲染器\r\n###2.1 新建一个项目，基于 Django 1.8，低版本的请自行修改对应地方：\r\n\r\n\r\n    django-admin.py startproject zqxt\r\n    cd zqxt\r\n    python manage.py startapp blog\r\n我们新建了 zqxt 项目和 blog 这个应用。\r\n\r\n把 blog 这个app 加入到 settings.py 中\r\n\r\n\r\n    INSTALLED_APPS = (\r\n        ''django.contrib.admin'',\r\n        ...\r\n     \r\n        ''blog'',\r\n    )\r\n整个项目当前目录结构如下：\r\n\r\n\r\n    zqxt\r\n    ├── blog\r\n    │   ├── __init__.py\r\n    │   ├── admin.py\r\n    │   ├── migrations\r\n    │   │   └── __init__.py\r\n    │   ├── models.py\r\n    │   ├── tests.py\r\n    │   └── views.py\r\n    ├── manage.py\r\n    └── zqxt\r\n        ├── __init__.py\r\n        ├── settings.py\r\n        ├── urls.py\r\n        └── wsgi.py\r\n###2.2 我们在 zqxt/zqxt/ 这个目录下（与settings.py 在一起）新建一个 context_processor.py\r\n\r\n    #!/usr/bin/env python\r\n    # -*- coding: utf-8 -*-\r\n    # @Date    : 2015-10-31 14:26:26\r\n    # @Author  : Weizhong Tu (mail@tuweizhong.com)\r\n     \r\n    from django.conf import settings as original_settings\r\n     \r\n     \r\n    def settings(request):\r\n        return {''settings'': original_settings}\r\n     \r\n     \r\n    def ip_address(request):\r\n        return {''ip_address'': request.META[''REMOTE_ADDR'']}\r\n####2.3 我们把新建的两个 上下文渲染器 加入到 settings.py 中：\r\n\r\n\r\n    TEMPLATES = [\r\n        {\r\n            ''BACKEND'': ''django.template.backends.django.DjangoTemplates'',\r\n            ''DIRS'': [],\r\n            ''APP_DIRS'': True,\r\n            ''OPTIONS'': {\r\n                ''context_processors'': [\r\n                    ''django.template.context_processors.debug'',\r\n                    ''django.template.context_processors.request'',\r\n                    ''django.contrib.auth.context_processors.auth'',\r\n                    ''django.contrib.messages.context_processors.messages'',\r\n     \r\n                    ''zqxt.context_processor.settings'',\r\n                    ''zqxt.context_processor.ip_address'',\r\n                ],\r\n            },\r\n        },\r\n    ]\r\n最后面两个是我们新加入的，我们稍后在模板中测试它。\r\n\r\n###2.4 修改 blog/views.py\r\n\r\n    \r\n    from django.shortcuts import render\r\n     \r\n     \r\n    def index(reuqest):\r\n        return render(reuqest, ''blog/index.html'')\r\n     \r\n     \r\n    def columns(request):\r\n        return render(request, ''blog/columns.html'')\r\n###2.5 新建两个模板文件，放在 zqxt/blog/template/blog/ 中\r\n\r\nindex.html\r\n    \r\n    <h1>Blog Home Page</h1>\r\n     \r\n    DEBUG: {{ settings.DEBUG }}\r\n     \r\n    ip: {{ ip_address }}\r\n    columns.html\r\n\r\n\r\n    <h1>Blog Columns</h1>\r\n     \r\n    DEBUG: {{ settings.DEBUG }}\r\n     \r\n    ip: {{ ip_address }}\r\n\r\n\r\n###2.6 修改 zqxt/urls.py\r\n\r\n    from django.conf.urls import include, url\r\n    from django.contrib import admin\r\n    from blog import views as blog_views\r\n     \r\n    urlpatterns = [\r\n        url(r''^blog_home/$'', blog_views.index),\r\n        url(r''^blog_columns/$'', blog_views.columns),\r\n        url(r''^admin/'', include(admin.site.urls)),\r\n    ]\r\n###2.7 打开开发服务器并访问，进行测试吧：\r\n\r\n    python manage.py runserver\r\n就会看到所有的模板都可以使用 settings 和 ip_address 变量：\r\n\r\n    http://127.0.0.1:8000/blog_home/\r\n    \r\n    http://127.0.0.1:8000/blog_columns/', 'django, 上下文渲染', '2016-05-13', '2016-05-13 00:46:14'),
(5, 'Django 代码高亮', '在网上有很多的代码高亮都是使用pygments实现的代码高亮，但是还有一种很简单的方法\r\n使用 highlight.js\r\n\r\n官方地址： <https://highlightjs.org>\r\n\r\ngithub: <https://github.com/isagalaev/highlight.js>\r\n\r\n使用也非常简单，只需要在页面的HEAD里面添加一段代码就好了\r\n\r\n    <link rel="stylesheet" href="/path/to/styles/default.css">\r\n\r\n    <script src="/path/to/highlight.pack.js"></script>\r\n\r\n    <script>hljs.initHighlightingOnLoad();</script>', 'django, 代码高亮', '2016-05-13', '2016-05-13 07:42:25');

-- --------------------------------------------------------

--
-- 表的结构 `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `articlesId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `message`, `articlesId_id`) VALUES
(1, '评论测试1', 1),
(2, '评论测试2', 2),
(3, '评论测试2', 2),
(4, 'apache 评论测试1', 3);

-- --------------------------------------------------------

--
-- 表的结构 `blog_system`
--

CREATE TABLE `blog_system` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `meteWorld` varchar(30) NOT NULL,
  `BriefIntroduction` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-05-07 08:50:11', '1', 'articles object', 1, '已添加。', 7, 1),
(2, '2016-05-07 08:50:22', '2', 'articles object', 1, '已添加。', 7, 1),
(3, '2016-05-07 12:07:21', '1', '测试文章1', 2, '已修改 content 。', 7, 1),
(4, '2016-05-08 10:24:24', '1', 'comments object', 1, '已添加。', 8, 1),
(5, '2016-05-08 10:56:46', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(6, '2016-05-09 00:23:10', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(7, '2016-05-09 00:24:22', '2', '测试文章2', 2, '没有字段被修改。', 7, 1),
(8, '2016-05-09 00:25:43', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(9, '2016-05-09 00:33:20', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(10, '2016-05-09 01:03:12', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(11, '2016-05-09 01:06:14', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(12, '2016-05-09 01:15:01', '2', '测试文章2', 2, '已修改 content 。', 7, 1),
(13, '2016-05-13 00:37:07', '3', '使用mod_wsgi在Apache上部署Django项目', 1, '已添加。', 7, 1),
(14, '2016-05-13 00:46:14', '4', 'Django 上下文渲染器', 1, '已添加。', 7, 1),
(15, '2016-05-13 07:08:55', '3', '使用mod_wsgi在Apache上部署Django项目', 2, '已修改 content 。', 7, 1),
(16, '2016-05-13 07:41:30', '5', 'Django 代码高亮', 1, '已添加。', 7, 1),
(17, '2016-05-13 07:42:25', '5', 'Django 代码高亮', 2, '已修改 content 。', 7, 1);

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'articles'),
(8, 'blog', 'comments'),
(9, 'blog', 'system'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-04-10 05:16:52'),
(2, 'auth', '0001_initial', '2016-04-10 05:16:54'),
(3, 'admin', '0001_initial', '2016-04-10 05:16:54'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-04-10 05:16:54'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-04-10 05:16:55'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-04-10 05:16:55'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-04-10 05:16:55'),
(8, 'auth', '0004_alter_user_username_opts', '2016-04-10 05:16:55'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-04-10 05:16:55'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-04-10 05:16:55'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-04-10 05:16:55'),
(12, 'sessions', '0001_initial', '2016-04-10 05:16:55'),
(13, 'blog', '0001_initial', '2016-05-07 08:28:13'),
(14, 'blog', '0002_comments_system', '2016-05-08 10:23:04'),
(15, 'blog', '0003_auto_20160509_0021', '2016-05-09 00:22:11'),
(16, 'blog', '0003_auto_20160509_0032', '2016-05-09 00:32:18'),
(17, 'blog', '0004_auto_20160509_0036', '2016-05-09 00:36:25'),
(18, 'blog', '0003_auto_20160509_0058', '2016-05-09 00:58:33'),
(19, 'blog', '0004_auto_20160510_0015', '2016-05-10 00:15:42');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pfm5pwvmsc9k34w9axeblit05ws38goi', 'MjIwNjFkMWY5MDI1NDBmMDIxYjhmZWUzMTllZGQzZjNiNjAxYzkxZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2NmVjODcxODYwZDgxMzIwYzA2ZmQ3ZWFhYTc0MzgyNGQyODE3MjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-05-21 08:30:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `blog_articles`
--
ALTER TABLE `blog_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_articlesId_id_886e5034_fk_blog_articles_id` (`articlesId_id`);

--
-- Indexes for table `blog_system`
--
ALTER TABLE `blog_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `blog_articles`
--
ALTER TABLE `blog_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `blog_system`
--
ALTER TABLE `blog_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_articlesId_id_886e5034_fk_blog_articles_id` FOREIGN KEY (`articlesId_id`) REFERENCES `blog_articles` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
