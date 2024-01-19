#!/bin/bash

rm -rf /var/lib/apt/lists/*

apt-get update

apt update

apt-get install -y cmake autoconf build-essential libboost-system-dev \
libboost-thread-dev libboost-program-options-dev libboost-test-dev \
libboost-filesystem-dev libboost-log-dev pkg-config libcap-dev openssl \
libz-dev libssl-dev libcurl4-openssl-dev libexpat1-dev gettext gcc \
python3 python3-pip default-jre openssh-client libboost-dev \
rsync wget doxygen graphviz clang-tidy cppcheck openjdk-17-jdk docker \
docker-compose clang-format curl rfkill libpcap-dev libevent-dev \
sqlite3 libsqlite3-dev nodejs npm git-