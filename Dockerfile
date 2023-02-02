FROM python:3.8.16-slim
WORKDIR /module
COPY . /module/
ADD aws-lambda-rie /usr/local/bin/aws-lambda-rie
RUN mkdir -p /opt/extensions
RUN pip install -r function/requirements.txt
ENTRYPOINT [ "/module/entry_script.sh" ]