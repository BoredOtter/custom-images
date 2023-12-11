FROM linuxserver/code-server:4.19.1

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip bash

RUN pip3 install --include-deps && \
    openshift pyyaml kubernetes flask ansible

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
