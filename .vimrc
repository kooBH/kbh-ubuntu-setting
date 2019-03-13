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
set background=dark

" convert tab as 2 spaces
" https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" syntastic c++11
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'



" You Complete me Setting
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'

let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0 
let g:ycm_enable_diagnostic_highlighting = 0


so ~/.vim/plugins.vim
