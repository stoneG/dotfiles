filetype plugin indent on
set nocompatible
filetype off
set modelines=0

" Leader
let mapleader = ","
let g:mapleader = ","

" VUNDLE START
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""" Plugins {

" Syntax Highlighting
Plugin 'kchmck/vim-coffee-script'

" Editing
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'rstacruz/sparkup'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 0
nnoremap <leader>r :RainbowToggle<ENTER>
Plugin 'kien/ctrlp.vim'
" Plugin 'Valloric/YouCompleteMe'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Code Structure
" Plugin 'majutsushi/tagbar'
" nmap <F6> :TagbarToggle<CR>
" let g:tagbar_left = 1

" Git integration
Plugin 'tpope/vim-fugitive'

" Status bar
Plugin 'bling/vim-airline'

" Theme
Plugin 'altercation/vim-colors-solarized'
" colorscheme sitongpython
syntax enable
set background=dark
colorscheme solarized

""" }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" VUNDLE END


"Standard stuff
"filetype on
set ai
set ruler
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set expandtab " Default 4 space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set si

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Indentation by file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType coffeescript setlocal expandtab shiftwidth=2 softtabstop=2

" Regex and search
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap t gt
nnoremap T gT

" Get rid of F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ; = :
nnoremap ; :

" Save on moving focus
au FocusLost * :wa

" Open this file quickly in split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" jj as ESC for moving back into normal mode
inoremap jj <ESC>

" Split window and move focus to new window
nnoremap <leader>w <C-w>v<C-w>l

" Nagivating between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Parenthesis/bracket expanding
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>

"Highlight search
set hlsearch
set incsearch
set showmatch

" F4 to turn on and off search highlighting
:noremap <F4> :set hlsearch! hlsearch?<CR>

" F12 to toggle paste mode
:set pastetoggle=<F12>

" F5 word wrap mode (good for writing blog posts)
nnoremap <F5> :set linebreak<CR>
nnoremap <C-F5> :set nolinebreak<CR>

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=white guibg=white
match RedundantSpaces /\s\+$\| \+\ze\t/
hi NonText guifg=white guibg=white

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Command-T
" let g:CommandTMaxHeight = 15
" set wildignore+=*.o,*.obj,.git,*.pyc
" noremap <leader>j :CommandT<cr>
" noremap <leader>y :CommandTFlush<cr>

" Ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" :Ack [options] {pattern} [{directory}]
nnoremap <leader>a :Ack 

" Indent Guide
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#242424 ctermbg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=236

" Folding
set foldmethod=indent
set foldlevel=99

" Ctrl P file ignoring
let g:ctrlp_custom_ignore = {
  \ 'dir': '^log/*+',
  \ }
