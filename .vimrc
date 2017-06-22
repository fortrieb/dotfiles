" no vi
set nocompatible
" Vimplug Plugin Manager for Vim
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Default configs for getting started with Vim
Plug 'tpope/vim-sensible', { 'tag': 'v1.1' }
" commenting 
Plug 'scrooloose/nerdcommenter', { 'tag': '2.5.0' }
" navigation sidebar
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' }
" fuzzy search
Plug 'kien/ctrlp.vim', { 'branch': 'master' }
" Golang plug
Plug 'fatih/vim-go', { 'tag': 'v1.13' }
" Switching between companion files
Plug 'derekwyatt/vim-fswitch', { 'branch': 'master' }
" git wrapper
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
" show git line addings
Plug 'airblade/vim-gitgutter', { 'branch': 'master' }
" typescript support
Plug 'leafgarland/typescript-vim', { 'branch': 'master' }
" all about surroundings
Plug 'tpope/vim-surround', { 'branch': 'master' }
" emmet for vim
Plug 'mattn/emmet-vim', { 'branch': 'master' }
" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim', { 'branch': 'master' }
" Syntax highlighting for vue.js components
Plug 'posva/vim-vue'
" add warning deep indentation
Plug 'dodie/vim-disapprove-deep-indentation'
" Autocompletion
Plug 'valloric/youcompleteme'
" ALE = Asynchronous Lint Engine
Plug 'w0rp/ale', { 'tag': 'v1.3.1' }
" auto intention
Plug 'raimondi/delimitmate', { 'branch': 'master' }
" Python syntax highlighting
Plug 'vim-python/python-syntax'
" Airline statusbar
"Plug 'vim-airline/vim-airline'

call plug#end()

" some useful defaults
syntax on
filetype plugin on
" set number
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

" vim-go settings
"
" Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

" Plugin settings
"
" NERDTree
" Ctrl-n to toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.aux$','\.fdb_latexmk$','\.fls$','\.synctex.gz$','\.lof$','\.tdo$','\.toc$','\.out$','\.blg$','\.bbl$']

" NERDCommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" YouCompleteMe
"
" configuration
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Vim-Python
let g:python_highlight_all = 1

" VimTex
"
" PDF viewer
let g:vimtex_view_general_viewer='evince'
