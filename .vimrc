call plug#begin('~/.vim/plugged')
" List of plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'tikhomirov/vim-glsl'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive' 
Plug 'sheerun/vim-polyglot' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'dense-analysis/ale' 
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'honza/vim-snippets'
Plug 'HerringtonDarkholme/yats.vim'
if empty(glob('~/.vim/plugged/'))
    PlugInstall
endif
call plug#end()
syntax enable
colo onedark
" Make SPACE usable in keymappings
nnoremap <SPACE> <Nop>
let g:mapleader = " "
" Setting up airline and YATS
let g:airline_theme='onedark'
set laststatus=2
let g:airline#extensions#lsp#enabled = 1
let g:airline_section_l = airline#section#create(['filename', 'paste', 'lsp'])
let g:airline_section_r = airline#section#create(['lineinfo', 'percent', 'fileformat', 'fileencoding', 'filetype'])
let g:airline_section_x = airline#section#create(['editor'])
let g:airline#parts#filename#formatter = 'shorten'
let g:airline#parts#filename#shorten_length = 85
let g:yats_host_keyword = 1
" Keymappings
nnoremap <C-g> :!g++ % -o %:r && chmod u+x ./%:r && ./%:r<CR>
nnoremap <C-y> :!python3 %<CR>
nnoremap <C-o> :w<CR>:!node %<CR> 
nnoremap <C-s> :w<CR>:!npx svelte-check %<CR> 
nnoremap <C-p> :CtrlP<CR>
nnoremap <C-b> :!chmod u+x ./%:r && ./%:r<CR>
nnoremap <F2> :w<CR> 
nnoremap <F3> :vsp<CR>
nnoremap <F4> :sp<CR>
nnoremap <F5> :q<CR>
nnoremap <F9> :set invnumber<CR>
nnoremap <F10> :set invrelativenumber<CR>
nnoremap <leader>t :ALEToggle<CR>
nnoremap <leader>e :NERDTreeCWD<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-z> :Files<CR>
" Auto close tags
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap < <><Esc>i
inoremap > <C-g>u><CR>==i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>
" Settings for emmet to expand abbreviation when TAB is pressed
augroup EmmetSettings
  autocmd! FileType html svelte jsx tsx imap <tab> <plug>(emmet-expand-abbr)
augroup END
" Setting regular vim params
set undofile
set clipboard=unnamedplus
set showmatch
set incsearch
set ruler
set wrap
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set autoindent
set ignorecase
set incsearch
set number
set cursorline
set cursorcolumn
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" Disable scrollbars (hackers don't use scrollbars for navigation)
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
