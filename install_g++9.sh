#!/bin/bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get -y install gcc-9
sudo apt-get -y install g++-9

sudo rm /usr/bin/g++
sudo ln /usr/bin/g++-9 /usr/bin/g++

sudo rm /usr/bin/gcc
sudo ln /usr/bin/gcc-9 /usr/bin/gcc
