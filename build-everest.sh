#!/bin/bash

echo **************************
echo *    BUILDING EVEREST    *
echo **************************

EVEREST_DEV=/home/$(whoami)/everest-dev
export CPM_SOURCE_CACHE=$HOME/.cache/CPM
export PATH=$PATH:/home/$(whoami)/.local/bin

python3 -m pip install --upgrade pip setuptools wheel

cd $EVEREST_DEV/everest-core
mkdir build
cd build
cmake ..
make install

