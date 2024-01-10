#!/bin/bash

mkdir tmp-git
cd tmp-git

curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.37.7.tar.gz
tar zxfv git.tar.gz

cd git-*
make configure
./configure --prefix=/usr --with-openssl
make prefix=/usr all
make prefix=/usr install

git --version