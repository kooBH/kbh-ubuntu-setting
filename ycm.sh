#! /bin/bash

git clone https://github.com/Valloric/YouCompleteMe.git

sudo apt-get --asume-yes install clang
sudo apt-get --asume-yes install build-essential
sudo apt-get --asume-yes install cmake
sudo apt-get --asume-yes install python3-dev
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
#./install.sh
cd ..
mv YouCompleteMe ~/.vim/bundle/


