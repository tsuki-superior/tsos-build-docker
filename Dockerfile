FROM debian
RUN apt-get -y update &&\
    apt-get -y install software-properties-common apt-utils &&\
    apt-get -y update &&\
    apt-get -y upgrade &&\
    apt-get -y install nasm build-essential dos2unix python python3
