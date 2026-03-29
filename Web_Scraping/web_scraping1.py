#beautifulsoup and requests pyhton basic data scraping packages
from bs4 import BeautifulSoup
import requests 

url='https://www.scrapethissite.com/pages/forms/'
page=requests.get(url)
Soup=BeautifulSoup(page.text,'html') #can also specify explicitely features="html.parser"
print(Soup)
print(Soup.prettify)