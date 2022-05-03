#!/bin/sh

# Check if the database has started
if [ -n "$POSTGRES_HOST" ] && [ -n "$PGPORT" ]
then
    ./wait-for-it.sh "$POSTGRES_HOST:$PGPORT" --strict --timeout=300
fi

python manage.py migrate

if [ "$DJANGO_SUPERUSER_USERNAME" ]
then
python manage.py createsuperuser \
    --noinput \
    --username $DJANGO_SUPERUSER_USERNAME \
    --email $DJANGO_SUPERUSER_EMAIL
fi

exec "$@"
