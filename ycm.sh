#! /bin/bash

git clone https://github.com/Valloric/YouCompleteMe.git

sudo apt-get --asume-yes install clang
sudo aptg-et --asume-yes install python
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --system-libclang
./install.sh
cd ..
mv YouCompleteMe ~/.vim/bundle/


