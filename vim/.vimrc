filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0

"Standard stuff
syntax on
filetype on
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

colorscheme sitongpython

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
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

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

" Leader
let mapleader = ","
let g:mapleader = ","

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Command-T
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc
noremap <leader>j :CommandT<cr>
noremap <leader>y :CommandTFlush<cr>

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" :Ack [options] {pattern} [{directory}]
nnoremap <leader>a :Ack

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Indent Guide
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#242424 ctermbg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=236

" Folding
set foldmethod=indent
set foldlevel=99
