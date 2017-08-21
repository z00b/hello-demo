FROM circleci/python:3.6.1
MAINTAINER rob@circleci.com

COPY . /app
WORKDIR /app
RUN sudo pip install -r requirements.txt
ENTRYPOINT ["gunicorn"]
CMD ["hello.hello_app:APP"]
