from celery import Celery

app = Celery('some_project',
             broker='amqp://guest:guest@localhost:5672/')


app.conf.update(
    timezone='Europe/London',
)
