"MY VIMRC

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'matschaffer/netrw-v142'
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-surround'
Bundle 'sjl/gundo.vim'
Bundle 'nono/vim-handlebars'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jgdavey/vim-blockle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ervandew/supertab'
Bundle 'derekwyatt/vim-scala'
Bundle 'gre/play2vim'
Bundle 'pythonandchips/vim-handlebars'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'


filetype plugin indent on
syntax on



let mapleader = ","
let maplocalleader = ","

let g:ackprg="ack -H --nocolor --nogroup  --column"
set grepprg="/usr/local/bin/ack"
set autowrite
set autoread
set ruler
set nu
set nowrap
set timeoutlen=250
set history=256
set mousehide
set mouse=a
set ts=2
set bs=2
set shiftwidth=2
set autoindent
set smarttab
set expandtab
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=b
set guioptions-=T
set guifont=Andale\ Mono:h20
set showmatch
set shell=/bin/sh
set splitright
set noerrorbells
set novisualbell
set listchars=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<

nnoremap <Leader>e :Explore . <CR>
nnoremap <Leader>E :Explore  <CR>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
nnoremap <Leader>t :CtrlP<CR>
"map <Up> :cprev <CR>
"map <Down> :cnext <CR>
"custom mappings
nnoremap <Leader>r G=gg<C-o><C-o>
nnoremap <F5> :GundoToggle<CR>

"diff options
:set diffopt+=iwhite

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

autocmd! bufwritepost .vimrc source ~/.vimrc

"set colour scheme
colorscheme vividchalk
