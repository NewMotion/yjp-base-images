FROM openjdk:11-jre
LABEL MAINTAINER="SRE <sre@newmotion.com>"


RUN curl -fsSL https://www.yourkit.com/download/YourKit-JavaProfiler-2019.1-b133.zip > /tmp/yjp.zip && \
    unzip -o -d /usr/local /tmp/yjp.zip  && \
    rm /tmp/yjp.zip && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

ENV JAVA_OPTS="-agentpath:/usr/local/YourKit-JavaProfiler-2019.1/bin/linux-x86-64/libyjpagent.so=port=10001,listen=all"

EXPOSE 10001
