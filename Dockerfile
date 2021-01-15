FROM debian
RUN apt-get -y update
RUN apt-get -y install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install g++ gcc make dos2unix python3 libncurses-dev bison flex libssl-dev libelf-dev wget curl libgmp-dev libmpfr-dev libmpc-dev git libncurses5-dev libreadline-dev autoconf automake texinfo 
RUN git clone https://github.com/tsuki-superior/tsos-toolchain.git
RUN cd tsos-toolchain
RUN chmod +x install-linux.sh
RUN ./install-linux.sh