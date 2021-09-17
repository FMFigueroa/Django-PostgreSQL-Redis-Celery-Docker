FROM python:3.8-alpine
ENV PYTHONUNBUFFERED=1
# Dependencia adicionales para que PostgreSQL funcione dentro de la version alpine.
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
WORKDIR /django
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt