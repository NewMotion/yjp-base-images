FROM adoptopenjdk/openjdk11:alpine-jre
LABEL MAINTAINER="SRE <sre@newmotion.com>"

RUN apk add --no-cache curl unzip && \
    curl -fsSL https://www.yourkit.com/download/YourKit-JavaProfiler-2019.1-b133.zip > /tmp/yjp.zip && \
    unzip -o -d /usr/local /tmp/yjp.zip  && \
    rm /tmp/yjp.zip

ENV JAVA_OPTS="-agentpath:/usr/local/YourKit-JavaProfiler-2019.1/bin/linux-x86-64/libyjpagent.so=port=10001,listen=all"

EXPOSE 10001