FROM adoptopenjdk/openjdk11:alpine-jre
MAINTAINER DevOps <devops@newmotion.com>

#RUN apk add --no-cache libc6-compat

RUN apk add --no-cache curl unzip && \
    curl -fsSL https://www.yourkit.com/download/docker/YourKit-JavaProfiler-2018.04-docker.zip > /tmp/yjp.zip && \
    unzip -o -d /usr/local /tmp/yjp.zip  && \
    rm /tmp/yjp.zip

ENV JAVA_OPTS="-agentpath:/usr/local/YourKit-JavaProfiler-2018.04/bin/linux-x86-64/libyjpagent.so=port=10001,listen=all"

EXPOSE 10001