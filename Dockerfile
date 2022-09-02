FROM alpine:3.14
RUN apk add --update openjdk11 docker-cli git curl
WORKDIR /tmp
CMD ["jshell"]
