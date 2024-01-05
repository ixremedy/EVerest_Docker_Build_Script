#!/bin/bash

echo **************************
echo *   BUILDING ISO15118    *
echo **************************

EVEREST_DEV=/home/$(whoami)/everest-dev
export CPM_SOURCE_CACHE=$HOME/.cache/CPM
export PATH=$PATH:/home/$(whoami)/.local/bin

cd $EVEREST_DEV/Josev
python3 -m pip install -r requirements.txt
cd $EVEREST_DEV/Josev/iso15118/shared/pki
./create_certs.sh -v iso-2 -i $EVEREST_DEV/everest-core

