FROM public.ecr.aws/lambda/python:3.9

COPY function/app.py ${LAMBDA_TASK_ROOT}
COPY function/requirements.txt ${LAMBDA_TASK_ROOT}

RUN pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

ENV APP_VERSION=1.0.0

CMD [ "app.handler"]