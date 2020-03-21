FROM jupyter/scipy-notebook:latest
MAINTAINER Eugine Kang <kangeugine@gmail.com>

RUN conda install --quiet --yes -c pytorch pytorch \
    torchtext \
    torchvision
RUN conda install --quiet --yes -c conda-forge pytorch-pretrained-bert \
    transformers
RUN pip install pytorch-nlp \
    streamlit
