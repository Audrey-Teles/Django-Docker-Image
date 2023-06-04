FROM python:3.10-slim-buster

LABEL maintainer="Audrey Teles"

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install default-libmysqlclient-dev -y
RUN apt-get install gcc -y
RUN pip3 install -r requirements.txt
