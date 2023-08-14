#!/bin/sh

poetry run celery -A api worker --loglevel=INFO