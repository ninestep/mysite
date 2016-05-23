import requests,re,threading
from bs4 import BeautifulSoup
from . import models


def movieList(moviename):
    lists={}
    global lists
    siteList=models.movieList.objects.all()
    threads=[]
    mutex=threading.Lock()
    for u in siteList:
        threads.append(movie(moviename,u.url,u.title))
    for t in threads:
        t.start()
    for t in threads:
        t.join()
    return lists

class movie(threading.Thread):
    def __init__(self,name,url,sitename):
        threading.Thread.__init__(self)
        self.name=name
        self.url=url
        self.sitename=sitename
    def run(self):
        '''
    电影搜索函数
    '''
        headers={'User-Agent':'Mozilla/5.0'}
        url='http://www.baidu.com/s?wd=intitle:%s site:%s'%(self.name,self.url)
        html=requests.get(url,headers=headers)
        soup=BeautifulSoup(html.content,'html.parser')
        '''
        <a data-click="{
                'F':'778717EA',
                'F1':'9D73F1E4',
                'F2':'4CA6DD6B',
                'F3':'54E5243F',
                'T':'1463878887',
                            'y':'67F1F1BB'

                                        }"
                                        href="http://www.baidu.com/link?url=I0B_FD9mnUBWqsXnWzbDOKaw_2me0XtOGeZWx0hQHh6AmPn4KVHXsxJoZYqSnyycyeG9FRUHRgLrMHhl7mRQlK&amp;wd=&amp;eqid=d82a5e13001a8ba600000003574104e6" target="_blank">Antonio Pinto and Dudu Aram -《<em>幻体</em>:续命游戏》(Self..._资源共享</a>
        '''
        list=soup.find_all('h3')
        lists[self.sitename]=list

