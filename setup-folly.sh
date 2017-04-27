#!/bin/bash

cd /tmp
git clone https://github.com/facebook/folly.git
(cd /tmp/folly/folly/test && \
  rm -rf gtest && \
  wget https://github.com/google/googletest/archive/release-1.8.0.tar.gz && \
  tar zxf release-1.8.0.tar.gz && \
  rm -f release-1.8.0.tar.gz && \
  mv googletest-release-1.8.0 gtest)
(cd /tmp/folly/folly &&
  autoreconf -ivf
  ./configure
  make && make check && make install)
rm -rf /tmp/folly
