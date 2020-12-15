set nocompatible           " be iMproved

if has('win32') || has('win64')
  let g:plugged_home = '~/AppData/Local/nvim/plugged'
else
  let g:plugged_home = '~/.vim/plugged'
endif

filetype off               " required!

call plug#begin('~/.vim/plugged')


Plug 'itchyny/lightline.vim'
" Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plug 'fatih/vim-go'
Plug 'mdempsky/gocode'

call plug#end()            " required

" filetype plugin indent on

" syntax on

set sw=4
set number
set relativenumber
set laststatus=2

" Put color into lightline
if !has('gui_running')
  set t_Co=256
endif
