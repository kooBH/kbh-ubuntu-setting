#!/bin/bash
sudo apt-get -y install build-essential checkinstall
sudo apt-get -y install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
      libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

cd /opt
sudo wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
sudo tar xzf Python-3.8.1.tgz

cd Python-3.8.1
sudo ./configure --enable-optimizations
sudo make altinstall
