# django-dev-dockerized
Basic django dockerization with Celery, Postgres and RabbitMQ

# Getting Started

You can use this base django template to start working immediatly on your project.

- It provides you code style checks.
- You can work on dockerized environment from the start when developing.
---
### .env.template
```
# Backend settings
DEBUG=True
BACKEND_HOSTNAME=backend
BACKEND_PORT=8989
SECRET_KEY=random_secret_pass
DJANGO_SUPERUSER_PASSWORD=Wie_Heissen_sie?
DJANGO_SUPERUSER_USERNAME=admin
DJANGO_SUPERUSER_EMAIL=admin@gmail.com

# DB settings
POSTGRES_HOST=db
POSTGRES_NAME=db
POSTGRES_USER=user
POSTGRES_PASSWORD=random_pg_pass
POSTGRES_DB=db
PGPORT=5433

# RabbitMQ
RABBITMQ_PORT=5673


# Celery

CELERY_BROKER_URL=amqp://guest:guest@rabbitmq:

```

