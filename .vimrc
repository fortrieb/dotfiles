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
" fuzzy search
Plug 'kien/ctrlp.vim'
" Golang plug
Plug 'fatih/vim-go'
" Switching between companion files
Plug 'derekwyatt/vim-fswitch'
" git wrapper
Plug 'tpope/vim-fugitive'
" show git line addings
Plug 'airblade/vim-gitgutter'
" auto completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" typescript support
Plug 'leafgarland/typescript-vim'
" vim tex support
Plug 'lervag/vimtex'

call plug#end()

" some useful defaults
syntax on
filetype plugin on
set number
let mapleader=","

" status line
set statusline=%f\ -\ FileType:\ %y			" file seperato typ
set statusline+=%{fugitive#statusline()}	" space
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

" Enable spell checking for markdown files
au BufRead *.md setlocal spell
au BufRead *.markdown setlocal spell

" vim-go settings
"
" Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

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

" use multiple checkers
"let g:syntastic_aggregate_errors = 1
" set golang checkers
let g:syntastic_go_checkers = ['golint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDCommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" YouCompleteMe
"
" configuration
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" VimTex
"
" PDF viewer
let g:latex_view_general_viewer='evince'
