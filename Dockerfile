ARG PYTHON_VERSION=3.8.5-buster

FROM python:${PYTHON_VERSION}

COPY ./app/requirements.txt /requirements.txt

RUN pip install -U pip && pip install -r /requirements.txt

COPY ./app "/opt/app"

WORKDIR "/opt"

EXPOSE 8000
