FROM python:3.6

ENV PYTHONUNBUFFERED 1
ENV SECRET_KEY '86n_ysm=m_v272dji58u93i#$_vj4j)34$lj1&a_jhdwth_jt4'
ENV DEBUG 1
ENV SQL_ENGINE 'django.db.backends.postgresql'
ENV SQL_DATABASE 'email_sender'
ENV SQL_USER 'luke'
ENV SQL_PASSWORD 'email_sender123'
ENV SQL_HOST 'email_sender_db'
ENV SQL_PORT 5432
ENV DJANGO_SETTINGS_MODULE 'email_sender_project.settings.development'
ENV DEVELOPMENT_ALLOWED_HOSTS '127.0.0.1, localhost, 0.0.0.0'

# Email configurations
ENV EMAIL_BACKEND ='django.core.mail.backends.smtp.EmailBackend'
ENV EMAIL_HOST_USER = '<Enter your GMAIL username here>@gmail.com'   
ENV EMAIL_HOST ='smtp.gmail.com'
ENV EMAIL_PORT = 587
ENV EMAIL_HOST_PASSWORD = '<Enter your password here>'   
ENV EMAIL_USE_TLS = True

RUN mkdir /django_email_sender_project
WORKDIR /django_email_sender_project

COPY requirements.txt /django_email_sender_project/

RUN pip install -r requirements.txt

ADD . /django_email_sender_project/

# Django service
EXPOSE 8000

