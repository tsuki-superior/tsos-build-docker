FROM ubuntu
RUN dpkg --add-architecture i386
RUN apt-get -y update
RUN apt-get -y install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y install libc6:i386 libstdc++6:i386
RUN apt-get -y upgrade
RUN apt-get -y install g++ gcc make dos2unix python3 libncurses-dev bison flex libssl-dev libelf-dev wget curl libgmp-dev libmpfr-dev libmpc-dev git libncurses5-dev libreadline-dev autoconf automake texinfo 
RUN git clone https://github.com/tsuki-superior/tsos-toolchain.git
RUN chmod +x tsos-toolchain/install-linux.sh
RUN tsos-toolchain/install-linux.sh
RUN rm -rfv tsos-toolchain
