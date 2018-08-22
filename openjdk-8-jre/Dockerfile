FROM openjdk:8-jre
MAINTAINER DevOps <devops@newmotion.com>

RUN apt-get update && \
    apt-get -y install curl unzip && \
    curl -fsSL https://www.yourkit.com/download/docker/YourKit-JavaProfiler-2018.04-docker.zip > /tmp/yjp.zip && \
    unzip -o -d /usr/local /tmp/yjp.zip  && \
    apt-get -y remove curl unzip && \
    apt-get autoclean && \
    rm /tmp/yjp.zip && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

ENV JAVA_OPTS="-agentpath:/usr/local/YourKit-JavaProfiler-2018.04/bin/linux-x86-64/libyjpagent.so=port=10001,listen=all"

EXPOSE 10001
