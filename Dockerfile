FROM alpine:3.7
MAINTAINER Sinan Goo 

RUN apk update ; apk add nodejs ; npm install -g live-server

EXPOSE 8080

