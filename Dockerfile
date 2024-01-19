FROM python:3.6.3

MAINTAINER root

# 安装基础包

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN  apt-get install -y --force-yes libavcodec-dev libavformat-dev libswscale-dev

ENV LANG C.UTF-8

RUN pip install --upgrade pip

RUN pip install numpy scipy redis  opencv-python-headles
