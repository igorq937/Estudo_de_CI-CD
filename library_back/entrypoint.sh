#!/bin/sh

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do 
        sleep 0.5
done

python manage.py makemigrations

python manage.py migrate

python manage.py runserver 0.0.0.0:$DJANGO_PORT
