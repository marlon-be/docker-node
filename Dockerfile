FROM ubuntu:latest
MAINTAINER Jelte Steijaert <jelte.steijaert@marlon.be>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen nl_BE.UTF-8
ENV LC_ALL nl_BE.UTF-8

RUN apt-get update -y

RUN apt-get install -y -f curl

# Installing nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install -y -f nodejs

# Installing yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y
RUN apt-get install -y -f yarn
