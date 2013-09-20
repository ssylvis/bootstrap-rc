" Disable vi compatibility
set nocompatible

" Enable file type detection for indentation
filetype plugin indent on

" Add CtrlP bundle
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Keyboard shortcuts
let mapleader = ','
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>t :CtrlP<CR>

" Map s/S to insertion of single character
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>

" Set colors appropriate for dark background
set background=dark

" Always show status line
set laststatus=2

" Show tabs and trailing spaces
set list
set listchars=tab:> ,trail:·

" Change to bash-like tab-complete behavior
set wildmenu
set wildmode=longest,list
