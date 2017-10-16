import requests
from bs4 import BeautifulSoup
 
def CrawlWords(url):
    resource = requests.get(url).text
    souped_resource = BeautifulSoup(resource,"html.parser")
    all_h1 = souped_resource.find_all('h1')

    for each_result in all_h1:
        each_result_str = each_result.string
        word_result = each_result_str.lower().split()
        print(word_result)

CrawlWords(r'https://www.facebook.com')