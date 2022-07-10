# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
CMD ls
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY wait-for-db.sh .
COPY /app/web/. .
CMD ls