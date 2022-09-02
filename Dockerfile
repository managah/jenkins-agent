FROM alpine:3.14
RUN apk add --update openjdk11 docker-cli
WORKDIR /tmp
CMD ["jshell"]
