call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/everforest'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-surround'
Plug 'matze/vim-move'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'lukas-reineke/format.nvim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

syntax enable
set background=dark
colorscheme onedark
set number
set relativenumber
set cursorline
set cursorcolumn
set scrolloff=8
set signcolumn=yes
set lazyredraw
set termguicolors
let g:airline_theme='onedark'
highlight Normal guibg=NONE
let g:startify_custom_header = [
 \ '______         _______ _______ _______ _     _',
 \ '|_____] |      |______ |_____| |       |_____|',
 \ '|_____] |_____ |______ |     | |_____  |     |'
\]

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set clipboard=unnamedplus
set splitbelow
set splitright
set timeoutlen=500
set updatetime=300
let mapleader=" "

let g:indent_blankline_char = '┊'
let g:indent_blankline_show_trailing_blankline_indent = v:false

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <leader>f :Files<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j <Plug>(easymotion-j)
nnoremap <leader>k <Plug>(easymotion-k)
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
nnoremap <C-d> :cclose<CR>

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-clangd'
\]

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['eslint', 'prettier'],
  \ 'python': ['black']
\}
let g:ale_fix_on_save = 1
nnoremap <leader>al :ALEFix<CR>
nnoremap <leader>fm :Format<CR>
