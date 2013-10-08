set nocompatible                                       " disable vi compatibility

set directory-=.                                       " don't store swapfiles in the current directory
set expandtab                                          " expand tabs to spaces
set hlsearch                                           " enable search highlight on startup
set ignorecase                                         " case-insensitive search
set incsearch                                          " highlight matches as you type
set laststatus=2                                       " always show status line
set number                                             " show line numbers on left margin
set list                                               " show tabs and trailing spaces
set listchars=tab:> ,trail:·
set mouse=a                                            " enable mouse scroll wheel
set smartcase                                          " case-sensitive search if any caps
set t_Co=256                                           " use 256 colors
set wildmenu                                           " change to bash-like tab-complete behavior
set wildignore+=*.gem,*.git,*.svn,*.swp
set wildmode=longest,list

" close current buffer
cnoreabbrev c bdelete
" close all buffers
cnoreabbrev ca %bdelete
" save and close current buffer
cnoreabbrev wc w<bar>bdelete

" define <leader> for some mappings
let mapleader = ','
" search pattern using Ack (but don't open first result)
nnoremap <leader>a :Ack!<space>
" search currently opened files
nnoremap <leader>b :CtrlPBuffer<cr>
" open NERDTree finder
nnoremap <leader>d :NERDTreeToggle<cr>
" search files in NERDTree
nnoremap <leader>f :NERDTreeFind<cr>
" toggle search highlight
nnoremap <leader>h :set hlsearch!<cr>
" open (or goto) Quickfix window
nnoremap <leader>s :copen<cr>
" search files in current dir (or ancestor git repo)
nnoremap <leader>t :CtrlP<cr>

" ensure highlight on search
nnoremap / :set hlsearch<cr> /
" insert character at cursor
nnoremap s :execute 'normal i'.nr2char(getchar())."\e"<cr>
" insert character after cursor
nnoremap S :execute 'normal a'.nr2char(getchar())."\e"<cr>

" enable file type detection for indentation
syntax on
filetype plugin indent on

" execute pathogen bundler
execute pathogen#infect()

" ctrlp options
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn)|(vendor/bundle)$',
  \ 'file': '\v\.(gitignore|gitkeep|rspec)$'
  \ }                                                   " ignore repo directories
let g:ctrlp_show_hidden = 1                             " search hidden (dot) files

" dark solarized colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" highlight area beyond column 120
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235
