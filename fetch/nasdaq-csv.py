import requests
import csv

url = "https://www.nasdaq.com/api/v1/screener?page=0&pageSize=9999&exchange=nasdaq&download=true"
response = requests.get(url)
csv_data = response.content.decode("utf-8").splitlines()

companies = []
reader = csv.DictReader(csv_data)
for row in reader:
    companies.append({"name": row["Name"], "ticker": row["Symbol"]})
