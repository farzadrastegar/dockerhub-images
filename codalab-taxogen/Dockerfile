# sudo docker build -t farzadras/codalab-taxogen:latest .
FROM ubuntu:xenial

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa 

############################################################
# Common steps (must be the same in the CPU and GPU images)

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    iputils-ping \
    git \
    build-essential \
    cmake \
    libhdf5-dev \
    swig \
    wget \
    curl \
    make checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

### Install python
ARG version=2.7.13
RUN wget -P /tmp https://www.python.org/ftp/python/$version/Python-$version.tgz && \
    cd /tmp && \
    tar -xvf Python-$version.tgz && \
    cd Python-$version && \
    ./configure --enable-optimizations && \
    make && \
    checkinstall -y && \
    ./python -m ensurepip && \
    /bin/bash -c "source ~/.bashrc" && \
    python -V && \
    rm -fr /tmp/Python-$version && \
    python -V

### Without this Python thinks we're ASCII and unicode chars fail
ENV LANG C.UTF-8

## Python packages

RUN python -m pip install -U pip

RUN python -m pip install -U \
      numpy==1.16.6 \
      scipy==1.2.1 \
      PyYAML==5.2

RUN python -m pip install spherecluster
