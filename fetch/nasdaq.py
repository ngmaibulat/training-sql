import requests

# define API endpoint and parameters
url = "https://api.nasdaq.com/api/screener/stocks"
params = {
    "tableonly": "true",
    "limit": 0,
    "offset": 0,
    "download": "true"
}

# send GET request to NASDAQ API and get response as JSON
response = requests.get(url, params=params)
response_json = response.json()

# extract list of companies from JSON response
companies = response_json["data"]["rows"]

# print company names and symbols
for company in companies:
    name = company["companyName"]
    symbol = company["symbol"]
    print(name, symbol)

# Path: fetch/nasdaq.py
