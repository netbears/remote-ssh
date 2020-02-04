FROM ubuntu:18.04

RUN  apt-get update && apt-get install -y python3-pip bash jq wget ssh && pip3 install --upgrade awscli

COPY ssh_config ~/.ssh/config

COMMAND ["ls -altr"]
