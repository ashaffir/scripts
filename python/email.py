import requests
from bs4  import BeautifulSoup as bs
import time
import smtplib


URL = 'https://www.amazon.de/gcx/Geschenke-f%C3%BCr-Erwachsene/gfhz/ref=gcx_cd1352f_tunr_lgdsc_mtech?categoryId=adult-neutral&pf_rd_p=d149bb63-7a12-4175-9ba1-c31c8910b582&pf_rd_r=1QEKCG0FJHZTBYJA2K8A&pinnedAsins=B01ET1OTV6%2CB07CXGF728%2CB06XGMMBFK&scrollState=eyJpdGVtSW5kZXgiOjAsInNjcm9sbE9mZnNldCI6MzY0LjcxODc1fQ%3D%3D&sectionManagerState=eyJibGFja2xpc3QiOnt9fQ%3D%3D&subcategoryIds=adult-neutral%3Aelectronics'


user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
headers = {'User-Agent': user_agent}

page = requests.get(url=URL, headers=headers)
print(page)

soup = bs(page.content, 'html.parser')

title = soup.find_all('td')

def send_mail():
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.ehlo()
    server.starttls()
    server.ehlo()

    server.login('alfred.shaffir@gmail.com', 'ekkwwmzgjyscrggn') # Password from "Google apps passwords"

    subject = 'Test this mofo'
    body = 'Check this mofo for bugs and shit'
    msg = f'Subject: {subject} \n\n {body}'

    server.sendmail(
        'alfred.shaffir@gmail.com',
        'alf@naboo.id',
        msg
    )

    print('Mail was sent!!!!')


send_mail()

