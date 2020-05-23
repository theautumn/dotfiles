set nocompatible
set hlsearch
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
"  instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
    syntax on
    filetype plugin indent on
    
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set hidden

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Make vim pretty for Python
" Incidentally, this is why there are 'colors' and 'syntax' dirs in .vim/
set t_Co=256
colorscheme molokai
highlight Comment cterm=bold

" Set tabstop and autoindent
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab"

" play nice with YAML stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Mark col 80 and 120
let &colorcolumn="80,".join(range(120,999),",")
