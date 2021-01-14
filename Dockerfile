FROM debian
RUN apt-get -y update
RUN apt-get -y install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install g++ gcc make dos2unix python3 libncurses-dev bison flex libssl-dev libelf-dev cmake wget curl libgmp-dev libmpfr-dev libmpc-dev git
RUN git clone https://github.com/tsuki-superior/tsos-toolchain.git
RUN cd tsos-toolchain
RUN ./install-linux.sh