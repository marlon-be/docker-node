FROM ubuntu:latest
MAINTAINER Jelte Steijaert <jelte.steijaert@marlon.be>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

RUN locale-gen nl_BE.UTF-8
ENV LC_ALL nl_BE.UTF-8

RUN apt-get install -y -f curl

# Installing nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash

RUN apt-get install -y -f nodejs
