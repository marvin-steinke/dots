" leader

let mapleader="\<space>"
let maplocalleader="\<space>"


" plugins

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'francoiscabrol/ranger.vim'
Plug 'lervag/vimtex'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
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
set backupdir=$HOME/.cache/vim/backup/
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


" *tex

let g:tex_flavor = "latex"
augroup filetypes
    autocmd!
    autocmd BufNewFile,BufRead *.lco setlocal filetype=tex
augroup END

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'build',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-shell-escape',
    \ ],
    \}

let g:vimtex_context_pdf_viewer='zathura'
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_view_general_viewer = 'zathura'


" ranger

let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>


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


" ycm

let g:ycm_clangd_binary_path="/usr/bin/clangd"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<tab>'


" snippets

let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snippets"]
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
