" Disable vi compatibility
set nocompatible

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

" Use 256 colors
set t_Co=256

" Use dark solarized colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Highlight area beyond column 120
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235

" Enable search highlighting
set hlsearch

" Always show status line
set laststatus=2

" Show line numbers on left margin
set number

" Show tabs and trailing spaces
set list
set listchars=tab:> ,trail:·

" Enable mouse scroll wheel
set mouse=a

" Change to bash-like tab-complete behavior
set wildmenu
set wildignore+=*.gem,*.git,*.svn,*.swp
set wildmode=longest,list
