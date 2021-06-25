FROM ubuntu:focal

#RUN echo 'Acquire::http { Proxy "http://192.168.0.100:3142"; }' >> /etc/apt/apt.conf.d/proxy
RUN apt update

RUN env DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt install -y gcc make git unzip wget xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf xmlstarlet default-jre xsltproc
RUN apt install -y sudo bsdmainutils

RUN mkdir /emuelec
WORKDIR /emuelec
