FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /django_email_sender_project
WORKDIR /django_email_sender_project

COPY requirements.txt /django_email_sender_project/

RUN pip install -r requirements.txt

ADD . /django_email_sender_project/

# Django service
EXPOSE 8000

