FROM linuxserver/code-server

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip bash && \
    pip3 install openshift pyyaml kubernetes 


RUN pip3 install --include-deps ansible
