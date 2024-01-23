#!/bin/bash

echo **************************
echo * Cloning GIT repository *
echo **************************
git clone https://github.com/EVerest/everest-dev-environment
cd everest-dev-environment/dependency_manager
python3 -m pip install .

echo **************************
echo *   EDM-related steps    *
echo **************************
export CPM_SOURCE_CACHE=$HOME/.cache/CPM
export PATH=$PATH:/home/$(whoami)/.local/bin

mkdir -p /home/$(whoami)/everest-dev
edm init --workspace /home/$(whoami)/everest-dev
edm init main --workspace /home/$(whoami)/everest-dev

cd /home/$(whoami)/everest-dev/everest-utils/ev-dev-tools
python3 -m pip install .

