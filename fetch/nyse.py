import requests

# define API endpoint and parameters
url = "https://www.nyse.com/api/quotes/filter"
params = {
    "instrumentType": "EQUITY",
    "pageNumber": 1,
    "sortColumn": "NORMALIZED_TICKER",
    "sortOrder": "ASC",
    "maxResultsPerPage": 10000,
    "filterToken": ""
}

# send POST request to NYSE API and get response as JSON
response = requests.post(url, json=params)
response_json = response.json()

print(response_json)

