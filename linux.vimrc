" Use this for automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'MaxMEllon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fast Fuzzy Finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Quality of Life Improvements
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

call plug#end()

" === Color Scheme & UI Polish ===
set termguicolors
set background=dark
colorscheme gruvbox
let g:airline_theme = 'gruvbox'

set number
set relativenumber
set signcolumn=yes
set cursorline
set laststatus=2
set noshowmode

syntax on
filetype plugin on
filetype indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set ignorecase
set smartcase
set incsearch
set hlsearch

set splitbelow
set splitright

set autoread
set mouse=a

let g:loaded_python_provider = 0
let loaded_python3_provider = 0

let g:plug_timeout = 300

set ttyfast
set lazyredraw

let g:airline_highlighting_cache = 1

let mapleader = ","

map <C-n> :NERDTreeToggle<CR>

nnoremap <C-p> :Files<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

nnoremap <silent> <leader><space> :nohlsearch<CR>

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeStatusline = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#lsp#enabled = 1
let g:airline_section_l = airline#section#create(['filename', 'paste', 'lsp'])

let g:indentLine_char = '│'

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" Automatically install CoC extensions on first run
function! s:install_coc_extensions()
  let extensions = [
        \ 'coc-tsserver',
        \ 'coc-json',
        \ 'coc-html',
        \ 'coc-css',
        \ 'coc-python',
        \ 'coc-yaml',
        \ 'coc-clangd',
        \ 'coc-powershell',
        \ 'coc-rust'
        \]
   for extension in extensions
    silent! execute 'CocInstall ' . extension
  endfor
endfunction

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) == 0 && !get(g:, 'coc_extensions_installed', 0) |
      \ call s:install_coc_extensions() | let g:coc_extensions_installed = 1 | endif

function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
autocmd BufWritePre * call TrimWhitespace()

set hidden

set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc
