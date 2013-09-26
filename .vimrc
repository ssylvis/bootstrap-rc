set nocompatible                                       " disable vi compatibility
set hlsearch                                           " enable search highlight on startup
set incsearch                                          " highlight matches as you type
set laststatus=2                                       " always show status line
set number                                             " show line numbers on left margin
set list                                               " show tabs and trailing spaces
set listchars=tab:> ,trail:·
set mouse=a                                            " enable mouse scroll wheel
set t_Co=256                                           " use 256 colors
set wildmenu                                           " change to bash-like tab-complete behavior
set wildignore+=*.gem,*.git,*.svn,*.swp
set wildmode=longest,list

" function to get search input
function! SearchInput()
    call inputsave()
    let g:search = input('/')
    call inputrestore()
endfunction

" define mappings leader character
let mapleader = ','
" search currently opened files
nnoremap <leader>b :CtrlPBuffer<cr>
" toggle search highlight
nnoremap <leader>s :set hlsearch!<cr>
" search files in current dir (or ancestor git repo)
nnoremap <leader>t :CtrlP<cr>

" ensure highlight on search (and clear status)
nnoremap / :call SearchInput()<cr> :execute '/' . search<cr> :set hlsearch<cr> :echo<cr>
" insert character at cursor
nnoremap s :execute 'normal i'.nr2char(getchar())."\e"<cr>
" insert character after cursor
nnoremap S :execute 'normal a'.nr2char(getchar())."\e"<cr>

" enable file type detection for indentation
syntax on
filetype plugin indent on

" execute pathogen bundler
execute pathogen#infect()

" ignore vendor/bundle in ctrlp
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](vendor/bundle)$'}

" dark solarized colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" highlight area beyond column 120
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235
