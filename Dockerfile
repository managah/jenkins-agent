FROM openjdk:11-buster

RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates git libglib2.0-dev curl \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list \
    && apt-get update \
    && apt-get -y install docker-ce-cli \
    && apt-get autoclean -y && apt-get autoremove --purge -y
