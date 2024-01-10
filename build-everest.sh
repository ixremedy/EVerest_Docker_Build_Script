#!/bin/bash

echo **************************
echo *    BUILDING EVEREST    *
echo **************************

EVEREST_DEV=/home/$(whoami)/everest-dev
export CPM_SOURCE_CACHE=$HOME/.cache/CPM
export PATH=$PATH:/home/$(whoami)/.local/bin

git config --global http.version HTTP/1.1
git config --global http.sslBackend openssl
git config --global https.sslBackend openssl

cd $EVEREST_DEV/everest-core
mkdir build
cd build
cmake ..
make install

