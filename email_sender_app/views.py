from django.core.mail import send_mail
from django.http.response import HttpResponse
from django.template import loader


# Create your views here.
def index(request):
    html_message = loader.render_to_string(
        'email_sender/message.html',
        {
            'name': 'Habari',
            'body':  'Umepokea barua pepe hii ya kifahari!',
        })    
    send_mail(
        'Hongera!',
        'Umebahatika kupokea barua hii.',
        'mbarikiwa@gmail.com',
        ['mbarikiwa@gmail.com'],
        html_message=html_message,
        fail_silently=False,
    )

    return HttpResponse("Barua Imetumwa!!")
