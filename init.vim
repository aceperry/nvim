call plug#begin('~/.vim/plugged')


Plug 'itchyny/lightline.vim'

" Plugin 'git@github.com:altercation/vim-colors-solarized.git'
" Plug 'fatih/vim-go'
" Plug 'mdempsky/gocode'

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}


call plug#end()            " required


set sw=4
set number
set relativenumber
set laststatus=2

" From: https://jdhao.github.io/2019/06/06/nvim_deoplete_settings/
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
" maximum candidate window length
call deoplete#custom#source('_', 'max_menu_width', 80)

" Put color into lightline
if !has('gui_running')
  set t_Co=256
endif
