FROM openjdk:jre-alpine

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories 
RUN apk add --no-cache git graphviz font-noto-cjk

ADD https://github.com/schemaspy/schemaspy/releases/download/v6.0.0/schemaspy-6.0.0.jar /
