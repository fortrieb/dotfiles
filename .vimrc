" no vi
set nocompatible
" Vimplug Plugin Manager for Vim
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Default configs for getting started with Vim
Plug 'tpope/vim-sensible'
" commenting 
Plug 'scrooloose/nerdcommenter'
" navigation sidebar
Plug 'scrooloose/nerdtree'
" checker
Plug 'scrooloose/syntastic'
"" fuzzy search
Plug 'kien/ctrlp.vim'
"" git wrapper
Plug 'tpope/vim-fugitive'
"" show git line addings
Plug 'airblade/vim-gitgutter'
" auto completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

call plug#end()

" some useful defaults
syntax on
filetype plugin on
set number
let mapleader=","

" status line
set statusline=%f\ -\ FileType:\ %y			" file seperato typ
set statusline+=%*							" space
set statusline+=%=%-14.(%l,%c%V%)\ %p%%		" align right navigation

" Tab and softtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" highlight colum
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Plugin settings
"
" NERDTree
" Ctrl-n to toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Syntactic
"
" well known defaulst for beginner
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDCommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
