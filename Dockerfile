FROM python:3.9.4-slim-buster
MAINTAINER rob@circleci.com

COPY . /app
WORKDIR /app
RUN sudo pip install -r requirements.txt
ENTRYPOINT ["gunicorn"]
CMD ["hello.hello_app:APP"]
