" no vi
set nocompatible
set shell=bash
" Vimplug Plugin Manager for Vim
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Default configs for getting started with Vim
Plug 'tpope/vim-sensible', { 'tag': 'v1.1' }
" commenting 
"Plug 'scrooloose/nerdcommenter'
"" navigation sidebar
"Plug 'scrooloose/nerdtree'
"" checker
"Plug 'scrooloose/syntastic'
"" fuzzy search
"Plug 'kien/ctrlp.vim'
"" Golang plug
""Plug 'fatih/vim-go'
"" Switching between companion files
"Plug 'derekwyatt/vim-fswitch'
"" git wrapper
"Plug 'tpope/vim-fugitive'
"" show git line addings
"Plug 'airblade/vim-gitgutter'
"" auto completion
""Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
""Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"" typescript support
"Plug 'leafgarland/typescript-vim'

call plug#end()

" some useful defaults
syntax on
filetype plugin on
" set number
let mapleader=","

" status line
set statusline=%f\ -\ FileType:\ %y			" file seperato typ
"set statusline+=%{fugitive#statusline()}	" space
set statusline+=%*							" space
set statusline+=%=%-14.(%l,%c%V%)\ %p%%		" align right navigation

" Tab and softtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" highlight colum
highlight ColorColumn ctermbg=darkgray
set colorcolumn=120
highlight Visual ctermfg=darkred ctermbg=gray
highlight CursorLine cterm=None ctermbg=darkgray

" Enable spell checking for markdown files
au BufRead *.md setlocal spell
au BufRead *.MD setlocal spell
au BufRead *.markdown setlocal spell

" linenumbering
" 
" relative instead of absolute
set relativenumber
" but not on insert mode
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber


" Plugin settings
"

" Syntactic
"
" well known defaulst for beginner
set statusline+=%#warningmsg#
set statusline+=%*
