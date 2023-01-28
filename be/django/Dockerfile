FROM python:3-alpine

RUN mkdir /app
WORKDIR /app

# COPY ./django/requirements.txt /app
COPY requirements.txt /app/
RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev py3-virtualenv
    
RUN python3 -m venv /app
RUN python3 -m pip install -r requirements.txt
EXPOSE 8000
CMD [ "python", "manage.py", "runserver". "0.0.0.0:8000" ]
COPY . /app