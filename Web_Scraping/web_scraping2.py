#find and find_all
from bs4 import BeautifulSoup
import requests 

url='https://www.scrapethissite.com/pages/forms/'
page=requests.get(url)
Soup=BeautifulSoup(page.text,features="html.parser") #can also specify explicitely features="html.parser"
#print(Soup.find('div')) #this will find the first div tag it finds in the html(find)
#print(Soup.find_all('div'))#this will find all the div tags in html(find_all)

#we can also find a perticular tag using class , hyperlink etc present in that tag
#print(Soup.find_all('p',class_='lead'))
#now to only extract text from the tag we have to just add .text at end but it dosent work with find_all
print(Soup.find('p',class_='lead').text)