set nocompatible                                       " Disable vi compatibility
set hlsearch                                           " Enable search highlighting
set laststatus=2                                       " Always show status line
set number                                             " Show line numbers on left margin
set list                                               " Show tabs and trailing spaces
set listchars=tab:> ,trail:·
set mouse=a                                            " Enable mouse scroll wheel
set t_Co=256                                           " Use 256 colors
set wildmenu                                           " Change to bash-like tab-complete behavior
set wildignore+=*.gem,*.git,*.svn,*.swp
set wildmode=longest,list

" Enable file type detection for indentation
syntax on
filetype plugin indent on

" Execute pathogen bundler
execute pathogen#infect()

" Ignore vendor/bundle in CtrlP
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](vendor/bundle)$'}

" Keyboard shortcuts
let mapleader = ','
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>c :let @/ = ""<CR>
nmap <leader>t :CtrlP<CR>

" Map s/S to insertion of single character
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>

" Dark solarized colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Highlight area beyond column 120
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235
