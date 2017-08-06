call plug#begin('~/.local/share/nvim/plugged')
" commenting 
Plug 'scrooloose/nerdcommenter', { 'tag': '2.5.0' }
" fuzzy search
Plug 'kien/ctrlp.vim', { 'branch': 'master' }
" Golang Plugin
Plug 'fatih/vim-go'
" Golang refactoring Plugin
Plug 'godoctor/godoctor.vim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
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
" show git line addings
Plug 'airblade/vim-gitgutter', { 'branch': 'master' }
" all about surroundings
Plug 'tpope/vim-surround', { 'branch': 'master' }
" emmet for vim
Plug 'mattn/emmet-vim', { 'branch': 'master' }
" ALE = Asynchronous Lint Engine
Plug 'w0rp/ale', { 'tag': 'v1.3.1' }
" Autoclosing 
Plug 'jiangmiao/auto-pairs'
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
colorscheme industry
" but not on insert mode
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber
" NERDCommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Golang
"
let g:go_fmt_command = "goimports"
au BufRead,BufNewFile *.go set filetype=go

" Golang deoplete
"
let g:deoplete#sources#go#gocode_binary = "$GOPATH/bin/gocode"
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

