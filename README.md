## Lambda local

This project is a baseline to deploy aws lambda function locally

## Running locally

Deploy the docker-compose file:

```
docker-compose up
```

Open another tab in your terminal and perform a hit on the lambda endpoint

```
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```

## Testing locally

Install ./requirements.txt

```
pip install -r requirements.txt
```

Run test

```
pytest tests/test_app.py
```