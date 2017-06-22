call plug#begin('~/.local/share/nvim/plugged')
" commenting 
Plug 'scrooloose/nerdcommenter', { 'tag': '2.5.0' }
" Golang Plugin
Plug 'fatih/vim-go'
" File viewer
Plug 'scrooloose/nerdtree'
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Python autocompletion
Plug 'zchee/deoplete-jedi'
" Switching between companion files
Plug 'derekwyatt/vim-fswitch', { 'branch': 'master' }
" git wrapper
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
" all about surroundings
Plug 'tpope/vim-surround', { 'branch': 'master' }
" emmet for vim
Plug 'mattn/emmet-vim', { 'branch': 'master' }
" ALE = Asynchronous Lint Engine
Plug 'w0rp/ale', { 'tag': 'v1.3.1' }
call plug#end()

" some useful defaults
syntax on
filetype plugin on
" set number
let mapleader=","
" Enable spell checking for markdown files
au BufRead *.md setlocal spell
au BufRead *.MD setlocal spell
au BufRead *.markdown setlocal spell
" NERDTree
" Ctrl-n to toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.aux$','\.fdb_latexmk$','\.fls$','\.synctex.gz$','\.lof$','\.tdo$','\.toc$','\.out$','\.blg$','\.bbl$']
" relative line numbers
set relativenumber
" but not on insert mode
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber
" NERDCommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use deoplete.
let g:deoplete#enable_at_startup = 1
