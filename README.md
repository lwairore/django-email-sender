# Django Email Sender
Emails have become the medium of professional communication, but have we ever wondered how the process takes place? Django Email Sender allows you to send emails.

# Technology stack

- Python
- Django
- HTML
- Docker

# Steps to run
- Clone the project

    `$ git clone https://github.com/lwairore/django-email-sender`

- Install Docker using the [this tutorial](https://docs.docker.com/engine/install/)
- To run the Django app, run the following command from the root of your project directory:

    `$ docker-compose up`
- To bring down the application run:

    `$ docker-compose down`

# Additional changes to be done in Host Gmail account
- Go to [https://myaccount.google.com/security](https://myaccount.google.com/security)
- Scroll till you find "Less secure app access"
- Here you will find that the status is Off. You need to turn this to On State. Only if you follow the above steps, then you can send mail from your Gmail account using your django code.
