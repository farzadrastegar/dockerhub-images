#docker build -t farzadras/deepmet:gpu .

#FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
FROM farzadras/deepmet:nvidia_cuda__10.1-cudnn7-devel-ubuntu18.04

RUN apt update && \
    apt install -y bash \
                   build-essential \
                   git \
                   curl \
                   ca-certificates \
                   python3 \
                   python3-pip && \
    rm -rf /var/lib/apt/lists

RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir \
    mkl \
    pandas==1.1.5 scikit-learn==0.22.2.post1 numpy==1.19.5 matplotlib==3.2.2 scipy==1.4.1 tqdm==4.41.1 spacy==2.2.4 tensorflow==2.1.0  keras==2.3.1 transformers==2.4.0 \
    torch==1.4.0

#RUN git clone https://github.com/NVIDIA/apex
RUN git clone https://github.com/farzadrastegar/apex
RUN cd apex && \
    python3 setup.py install && \
    pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./

WORKDIR /workspace

CMD ["/bin/bash"]
