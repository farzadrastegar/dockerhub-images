#nohup sudo docker build -t farzadras/met-all-in-one:gpu . >build.out 2>&1 &

FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu16.04

ENV PYTHON_VERSION=3.6

RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         cmake \
         git \
         curl \
         ca-certificates

# Install conda and python.

#Filename || Size || Last Modified || MD5
# Miniconda3-latest-Linux-x86_64.sh || 89.9M || 2020-11-23 || 13:06:13 || 122c8c9beb51e124ab32a0fa6426c656
RUN curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b && \
    rm ~/miniconda.sh

ENV PATH=/root/miniconda3/bin:$PATH

RUN conda create -y --name container python=$PYTHON_VERSION

# Run the rest of commands within the new conda env.
# Use absolute path to appease Codefactor.
SHELL ["/root/miniconda3/bin/conda", "run", "-n", "container", "/bin/bash", "-c"]
RUN conda install -y python=$PYTHON_VERSION mkl


COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt


ENV LD_LIBRARY_PATH=root/miniconda3/envs/container/lib

RUN git clone https://github.com/NVIDIA/apex
RUN cd apex && \
    python3 setup.py install && \
    pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
