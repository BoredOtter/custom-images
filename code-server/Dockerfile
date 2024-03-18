FROM linuxserver/code-server:4.22.1

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip bash iputils-ping

COPY requirements.txt /tmp/

RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
