#!/bin/bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get -y install gcc-8
sudo apt-get -y install g++-8

sudo rm /usr/bin/g++
sudo ln /usr/bin/g++-8 /usr/bin/g++

sudo rm /usr/bin/gcc
sudo ln /usr/bin/gcc-8 /usr/bin/gcc
