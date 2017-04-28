#!/bin/bash

apt-get update
apt-get install -y \
    clang++-4.0 \
    clang-4.0 \
    g++-6 \
    gcc-6 \
    gdb \
    valgrind

apt-get install -y \
    autoconf \
    autoconf-archive \
    automake \
    git \
    cmake \
    make \
    pkg-config \
    wget

apt-get install -y \
    binutils-dev \
    libboost1.63-all-dev \
    libdouble-conversion-dev \
    libevent-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    libjemalloc-dev \
    liblz4-dev \
    liblzma-dev \
    libsnappy-dev \
    libssl-dev \
    libtool \
    zlib1g-dev

apt-get clean
apt-get autoremove
rm -rf /var/lib/apt/lists/*

update-alternatives --install /usr/bin/clang clang /usr/bin/clang-4.0 400
update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-4.0 400
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 600
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 600

groupadd -g 1000 docker
useradd  -g 1000 -u 1000 -m -G users,staff docker
