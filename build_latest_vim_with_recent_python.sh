#!/bin/bash
#cd /tmp && git clone https://github.com/vim/vim.git && cd vim
cd /tmp && cd vim
#  https://vi.stackexchange.com/questions/18433/installing-or-building-vim-with-python3-support-for-python-3-7-x-on-linux
./configure --enable-python3interp=yes --with-python3-config-dir=/usr/local/lib/python3.8/config-3.8-x86_64-linux-gnu --prefix=/usr/local --with-features=huge --enable-multibyte --enable-cscope
make -j && sudo make install

