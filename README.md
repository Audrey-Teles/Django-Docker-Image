# Docker Image for Django projects with MySQL

This image was build to simplify your work of creating a Django project with MySQL connection. When I tried it without a template, I had a lot of problems, so I hope to help you with that.

Here is the Dockerfile: 

``` 
FROM python:3.10-slim-buster

LABEL maintainer="Audrey Teles"

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install default-libmysqlclient-dev -y
RUN apt-get install gcc -y
RUN pip3 install -r requirements.txt
``` 
