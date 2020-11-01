FROM debian
RUN apt-get -y update
RUN apt-get -y install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install nasm g++ gcc make dos2unix python python3
