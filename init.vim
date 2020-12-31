" leader

let mapleader="\<space>"
let maplocalleader="\<space>"


" plugins

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" general settings

set number
syntax on
set hidden
set incsearch
set nospell
set fileformats=unix,dos,mac
set ignorecase
set smartcase
set undofile
set history=500
set autoread
au CursorHold * checktime
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
silent! set breakindent
set confirm
set backup
set splitbelow splitright
set wrap linebreak nolist
set foldcolumn=1
set scrolloff=10
set wildmenu
set nohlsearch


" shortcuts

nnoremap <silent> <leader>w :w<CR>:e<CR>
nnoremap <silent> <leader>q <C-W>q
"nnoremap <silent> <leader>h :bd<CR>
nnoremap <silent> <C-v> :vsplit<CR>
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-l> <C-W>l
nnoremap <silent> <C-f> :Files ~<CR>
" Remove all trailing whitespace by pressing F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" gruvbox

let g:gruvbox_italic=1
set background=dark
silent! colorscheme gruvbox


" air-line

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
