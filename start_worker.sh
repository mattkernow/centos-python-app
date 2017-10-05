#!/usr/bin/env bash

cd /home/python-app

celery worker -D -A app.task

python3.6 -m app.application