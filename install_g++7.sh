#!/bin/bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get -y install gcc-7
sudo apt-get -y install g++-7

sudo rm /usr/bin/g++
sudo ln /usr/bin/g++-7 /usr/bin/g++
