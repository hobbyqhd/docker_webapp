FROM ubuntu:14.04
MAINTAINER hobbyqhd “liubingxin1030@outlook.com”
ENV REFRESHED_AT 2017_06_16

RUN apt-get update
RUN apt-get install -y ruby-2.2.4 ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD [ "/opt/webapp/bin/webapp" ]
