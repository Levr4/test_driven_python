FROM continuumio/anaconda3:2020.07

COPY requirements.txt /tmp/pip-tmp/

RUN apt-get update
RUN pip install --upgrade pip\
    pip install -r /tmp/pip-tmp/requirements.txt


WORKDIR /workdir