#!/bin/bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get -y install gcc-6
sudo apt-get -y install g++-6

sudo rm /usr/bin/g++
sudo ln /usr/bin/g++-6 /usr/bin/g++
