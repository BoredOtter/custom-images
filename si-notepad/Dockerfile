FROM registry.access.redhat.com/ubi9/ubi

RUN yum update -y && yum install python python3-pip gcc python3-devel -y 

#pygraphviz is not supported on an unauthorized ubi9. To install on RH based systems graphviz
#RUN yum install graphviz graphviz-devel -y 

#add local bin to path
ENV PATH="$PATH:/home/jupyter/.local/bin" 

#as root install python packages
RUN pip install --default-timeout=100 -U jupyter jupyterlab pandas numpy seaborn scipy matplotlib scikit-learn ffmpeg xlrd deap && \

#pygraphviz is not supported on an unauthorized ubi9
#pip install pygraphviz && \ 

#i'm migrating to pytorch from tensorflow
#pip install -U tensorflow==2.12 && \
pip install --default-timeout=100 -U torch==2.2.1 torchvision torchaudio

RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR /home/jupyter 

EXPOSE 8888        

#starting jupyter-lab as root (not secure but useful for installing additional package from within jupyter)
USER root
# ENTRYPOINT ["jupyter", "notebook","--allow-root","--ip=0.0.0.0","--port=8888","--no-browser"]
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]