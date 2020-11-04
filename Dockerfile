FROM debian
RUN apt-get -y update
RUN apt-get -y install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install nasm g++ gcc make dos2unix python3 libncurses-dev bison flex libssl-dev libelf-dev cmake wget curl
