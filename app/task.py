from app.celery_app import app


@app.task(bind=True, ignore_result=True)
def query_database(self):
    try:
        print('task has run')
    except Exception as exc:
        print(exc)
