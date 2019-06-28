import requests
import json
import time

# https://www.cryptocompare.com/cryptopian/api-keys / stammm/10001
API_KEY = '32b2b6bb068a6039d69d03fdcea127ee8f148bc38962d3296b9b514a10030a24'
url_cryptocompare = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH&tsyms=ETH,USD,EUR&api_key="+API_KEY
url_coindesk = 'https://api.coindesk.com/v1/bpi/currentprice.json'

headers = {'x-test2': 'true'}

for i in range (0,10):
    print('******************')
    print('******************')
    print(time.ctime())
    page = requests.get(url_cryptocompare, headers=headers)
    json_data = page.json()
    # print('Page status:{}'.format(page.status_code))
    # print('CryptoCompare page content: {}'.format(page.text))
    print('CryptoCompare page content: {}'.format(json_data['BTC']['USD']))
    coindesk = requests.get(url_coindesk, headers=headers)
    json_coindesk = coindesk.json()
    # print('PaCoindesk page status:{}'.format(coindesk.status_code))
    print('Coindesk page data:{}'.format(json_coindesk['bpi']['USD']['rate']))

    time.sleep(60) # Delay for 1 minute (60 seconds).

