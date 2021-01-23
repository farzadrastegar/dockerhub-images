#docker build -t farzadras/deepmet:gpu .
FROM tensorflow/tensorflow:2.1.0-gpu-py3

RUN pip --no-cache-dir install codalab==0.5.34 Keras==2.3.1 Keras-Applications==1.0.8 Keras-Preprocessing==1.1.2 matplotlib==3.3.3 numpy==1.19.2 pandas==1.1.5 pip==20.3.3 regex==2020.11.13 scikit-learn==0.23.2 scipy==1.4.1 spacy==2.2.4 torch==1.4.0 tqdm==4.55.1 transformers==2.4.0 psutil==5.7.2 h5py==3.1.0 protobuf==3.14.0

WORKDIR /app/codalab
