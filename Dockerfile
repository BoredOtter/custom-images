FROM linuxserver/code-server

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip bash

RUN pip install flask 