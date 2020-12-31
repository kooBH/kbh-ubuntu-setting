#! /bin/bash

git clone https://github.com/Valloric/YouCompleteMe.git

sudo apt-get --assume-yes install clang
sudo apt-get --assume-yes install build-essential
sudo apt-get --assume-yes install cmake
sudo apt-get --assume-yes install python3-dev
cd YouCompleteMe
git checkout legacy-py2
git submodule update --init --recursive
python3 install.py --clang-completer
#./install.sh
cd ..
mv YouCompleteMe ~/.vim/bundle/


