FROM linuxserver/code-server:4.19.1

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip bash && \
    pip3 install openshift pyyaml kubernetes flask

RUN pip3 install --include-deps ansible

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
