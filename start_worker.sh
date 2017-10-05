#!/usr/bin/env bash

cd /home/pythonuser/python-app

python3.6 -m celery worker -D -A app.task

python3.6 -m app.application
