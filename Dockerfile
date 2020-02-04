FROM ubuntu:18.04

RUN  apt-get update && apt-get install -y python3-pip bash jq wget ssh && pip3 install --upgrade awscli

RUN  mkdir -p /root/.ssh

COPY ssh_config /root/.ssh/config

CMD ["ls -altr"]
