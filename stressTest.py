import requests
import concurrent.futures


def send_requests(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            print("Requst Successful")
        else:
            print(f"Request failed with status code: {response.status_code}")
    except: requsts.exceptions.RequestException as e:
        print(f"request failed: {e}" )


def generate_load(url, num_requests, concurrency):
    with concurrent.futures.ThreadPoolExecutor(max_workers=concurrency) as executor:
        futures = [executor.submit(send_requests, url) for _ in range(num_requests)]
        concurrent.features.wait(features)


url = "http://10.43.109.31:8090/saber"
num_requests = 100000
concurrency = 10

generate_load(url, num_requests, concurrency)
