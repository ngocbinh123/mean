FROM ubuntu:latest
MAINTAINER nnbinh0301@gmail.com

#install redis
RUN apt-get update
RUN apt-get install -y nodejs nodejs-legacy
RUN apt-get install npm
RUN sudo npm -g install daemon
RUN sudo npm -g install forever
RUN apt-get clean
#RUN sudo npm install -g mean-cli
RUN sudo npm -g install sails
COPY . src/
RUN cd src && npm init &&  npm install

