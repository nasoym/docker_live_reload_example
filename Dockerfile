FROM alpine:3.7
MAINTAINER Sinan Goo 

RUN apk update ; apk add nodejs ; npm install -g live-server

RUN mkdir /files
RUN mkdir /basics
COPY files /files
COPY files /basics

WORKDIR /files

EXPOSE 8080

CMD ["live-server","/files","/basics"]

