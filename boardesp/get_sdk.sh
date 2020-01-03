

SUDO=sudo
if [ -z "$1" ]; then
    SUDO=
fi


#!/bin/bash
$SUDO apt-get install -y make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python python-serial \
    sed git unzip bash help2man wget bzip2

$SUDO apt-get install -y libtool
$SUDO apt-get install -y libtool-bin
git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
cd esp-open-sdk
CT_ALLOW_BUILD_AS_ROOT_SURE=1 make
