import requests

def fetch_data(url: str) -> None:
    response = requests.get(url)
    if response.status_code == 200:
        print(response.text)
    else:
        print('Failed to fetch data')

if __name__ == '__main__':
    fetch_data('http://example.com')
