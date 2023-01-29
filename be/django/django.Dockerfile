FROM python:3-alpine

RUN mkdir /app
WORKDIR /app

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

EXPOSE 8000
COPY requirements.txt /app/

RUN apk update & \
    apk add build-base musl musl-dev mysql-client mariadb-dev py3-virtualenv
RUN python -m venv .
RUN source bin/activate
RUN pip install -r requirements.txt
# RUN python -m django help
RUN python -m django startproject optima

VOLUME /app/optima
WORKDIR /app/optima
CMD [ "python", "manage.py","runserver","0.0.0.0:8000" ]
# RUN python manage.py runserver 0.0.0.0:8000

COPY . /app/