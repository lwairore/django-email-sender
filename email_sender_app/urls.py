from email_sender_app.views import index
from django.urls import path
from email_sender_app.apps import EmailSenderAppConfig


app_name = EmailSenderAppConfig.name

urlpatterns = [
        path('', index, name='send_email'),
]
