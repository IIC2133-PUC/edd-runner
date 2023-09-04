FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt-get upgrade -y
RUN apt install -y valgrind gcc make
RUN apt install -y libpng-dev libjpeg-dev libgtk-3-dev
RUN export LD_LIBRARY_PATH=/usr/include/gtk-3.0/
RUN apt install -y python3
RUN apt install -y time htop

WORKDIR /runner