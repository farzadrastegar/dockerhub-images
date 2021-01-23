#docker build -t farzadras/deepmet:gpu .
FROM tensorflow/tensorflow:2.1.0-gpu-py3

RUN pip install codalab==0.5.34
RUN pip install Keras==2.3.1
RUN pip install Keras-Applications==1.0.8
RUN pip install Keras-Preprocessing==1.1.2
RUN pip install matplotlib==3.3.3
RUN pip install numpy==1.19.2
RUN pip install pandas==1.1.5
RUN pip install pip==20.3.3
RUN pip install regex==2020.11.13
RUN pip install scikit-learn==0.23.2
RUN pip install scipy==1.4.1
RUN pip install spacy==2.2.4
RUN pip install torch==1.3.1
RUN pip install tqdm==4.55.1
RUN pip install transformers==2.4.0

RUN pip install psutil==5.7.2
RUN pip install h5py==3.1.0
RUN pip install protobuf==3.14.0

RUN apt-get update

WORKDIR /app/codalab
ADD VERSION .
