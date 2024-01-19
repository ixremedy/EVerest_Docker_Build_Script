#!/bin/bash

rm -rf /var/lib/apt/lists/*

apt-get update

apt update

apt-get install -y cmake autoconf build-essential libboost-system-dev \
libboost-thread-dev libboost-program-options-dev libboost-test-dev \
libboost-filesystem-dev pkg-config libcap-dev openssl \
libz-dev libssl-dev libcurl4-openssl-dev libexpat1-dev gettext gcc \
python3 python3-pip default-jre openssh-client libboost-dev \
sqlite3 libsqlite3-dev libboost-log-dev nodejs npm git-