FROM python:3.10.13

MAINTAINER root

# RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak

# ADD sources.list /etc/apt/

# 安装基础包

RUN DEBIAN_FRONTEND=noninteractive apt-get update

ENV CMAKE_ARGS=-DBLAS=open

RUN  apt-get install -y --force-yes libavcodec-dev libavformat-dev libswscale-dev ccache libopenblas-dev libatlas-base-dev liblapack-dev openjdk-8-jdk libva-dev liblapacke-dev libatlas3-base

ENV LANG C.UTF-8

RUN pip install --upgrade pip

RUN pip install numpy scipy redis  opencv-python-headless
