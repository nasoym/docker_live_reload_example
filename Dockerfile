FROM alpine:3.7
MAINTAINER Sinan Goo 

RUN apk update ; apk add nodejs ; npm install -g live-server

RUN mkdir /files
WORKDIR /files
COPY files /files

EXPOSE 8080

CMD ["live-server /files"]

