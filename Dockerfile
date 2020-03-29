FROM jupyter/scipy-notebook:latest
MAINTAINER Eugine Kang <kangeugine@gmail.com>

RUN conda install --quiet --yes -c pytorch pytorch \
    torchtext \
    torchvision
RUN conda install --quiet --yes -c conda-forge transformers \
    jupyter_contrib_nbextensions
RUN conda install --quiet --yes -c powerai sentencepiece
RUN conda install --quiet --yes pyarrow
RUN pip install streamlit
