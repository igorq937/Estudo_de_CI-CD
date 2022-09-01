#!/bin/sh

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do 
        sleep 0.5
done

python manage.py makemigrations

python manage.py migrate

test="test"
if [ $1 = $test ]
then
        python manage.py test
else
        python manage.py runserver 0.0.0.0:$DJANGO_PORT
fi
