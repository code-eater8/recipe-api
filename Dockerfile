FROM python:3.7-alpine
MAINTAINER HanaaAppDeveloper

ENV PYTHONBUFFERED 1
 
 ADD ./requirements.txt /requirements.txt
 RUN pip install -r /requirements.txt

 RUN mkdir /app
 WORKDIR /app
 ADD ./app /app

 RUN command adduser -D user
 USER user
