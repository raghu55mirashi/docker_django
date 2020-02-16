FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERD 1

WORKDIR /Docker_projects

COPY Pipfile Pipfile.lock /Docker_projects/

RUN pip install pipenv && pipenv install --system

COPY . /Docker_projects/