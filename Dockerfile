FROM openjdk:11.0.4-jre-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y nodejs openssh-client git graphviz fonts-noto-cjk && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*

ADD https://github.com/schemaspy/schemaspy/releases/download/v6.0.0/schemaspy-6.0.0.jar /

ENTRYPOINT [ "" ]
