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
Plug 'w0rp/ale' ", { 'tag': 'v1.3.1' }
Plug 'vim-airline/vim-airline'
" Autoclosing 
Plug 'jiangmiao/auto-pairs'
" Snippet manager
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Latex
Plug 'lervag/vimtex'
call plug#end()

" some useful defaults
syntax on
filetype plugin on

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif


" set background=light " for the light version
colorscheme delek

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

" Vimtex
let g:vimtex_view_method = "general"
let g:vimtex_viewer_general_viewer = "evince"
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
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_assignments = 1
" Enable same variable highlight
let g:go_auto_sameids = 1
let g:go_auto_type_info = 0
let g:go_addtags_transform = "snakecase"
let g:go_snippet_engine = "neosnippet"
" open Go definition
" go back with C-t
au FileType go nmap <F12> <Plug>(go-def)

" Golang deoplete
"
let g:deoplete#sources#go#gocode_binary = "$GOPATH/bin/gocode"
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

let g:ale_linters = {'go': ['gometalinter']} 

" Gometalinter
"
let g:go_metalinter_deadline = "10s"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = [ 'errcheck', 'golint' ]
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'errcheck',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosimple',
    \ 'ineffassign',
    \ 'vet',
    \ 'vetshadow'
    \]

" Go function declaration
au FileType go nmap <leader>gt :GoDeclsDir<cr>
