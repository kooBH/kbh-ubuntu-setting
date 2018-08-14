set nu

map <C-o> :NERDTreeToggle<CR>

set enc=utf-8

"  ,m -> c function manuals
func! Man()
		let sm = expand("<cword>")
		exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
endfunc
nmap ,m :call Man()<cr><cr>

"clipboard copy
"vim --version ==> check +xterm_clipboard
"sudo apt-get install vim-gnome
set clipboard=unnamedplus
"if using tmux
"install xclip
"add following to .tmux.conf
"bind -t vi-copy y copy-pipe '"xclip -sel clip -i"'

"colorscheme 
"set background=dark

" convert tab as 2 spaces
" https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

so ~/.vim/plugins.vim
