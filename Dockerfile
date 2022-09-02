FROM openjdk:11-buster

RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates git libglib2.0-dev curl \
    && apt-get autoclean
