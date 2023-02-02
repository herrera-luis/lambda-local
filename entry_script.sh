#!/bin/sh
if [ -z "${AWS_LAMBDA_RUNTIME_API}" ]; then
    exec /usr/local/bin/aws-lambda-rie /module/function/lambda_function.py
else
    exec python aws-lambda-ric
fi