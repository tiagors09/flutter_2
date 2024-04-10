FROM ubuntu:18-04

ENV TZ=America/Fortaleza
RUN ln -snf /usr/share/zoneinfo/$TZ && echo $TZ > /etc/timezone

RUN apt update && apt install -y curl git xz-utils zip libglu1-mesa openjdk-8-jdk wget

RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer
