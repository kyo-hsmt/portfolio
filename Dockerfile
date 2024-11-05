FROM continuumio/anaconda3

RUN set -x &&\
    apt update -y &&\
    apt upgrade -y &&\
    apt install -y wget sudo vim

# conda install 
COPY pygis.yml .

RUN pip install --upgrade pip && \
    conda update -n base -c defaults conda && \
    conda env create -n pygis -f pygis.yml && \
    conda init && \
    echo "conda activate pygis" >> ~/.bashrc

ENV CONDA_DEFAULT_ENV pygis && \
    PATH /opt/conda/envs/pygis/bin:$PATH

WORKDIR /

CMD ["/bin/bash"]
