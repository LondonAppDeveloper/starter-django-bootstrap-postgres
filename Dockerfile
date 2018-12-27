FROM python:3.7-alpine
LABEL maintainer="mark@londonappdeveloper.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN mkdir -p /vol/static/media/uploads/
RUN adduser -D user
RUN chown -R user:user /vol/static/
RUN chmod -R 755 /vol/static
USER user
