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
Plug 'neoclide/coc.nvim' 
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'honza/vim-snippets'
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
let g:airline_section_x = airline#section#create(['coc'])
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
nnoremap <leader>d :CocDefinition<CR>
nnoremap <leader>h :CocHover<CR>
nnoremap <leader>r :CocRename<CR>
nnoremap <leader>f :CocFormat<CR>
nnoremap <leader>c :CocType<CR>
nnoremap <leader>x :CocFix<CR>
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
inoremap { {}<Esc>i
" Coc extensions
let g:coc_global_extensions = [
  \ 'coc-tsserver', 
  \ 'coc-svelte', 
  \ 'coc-clangd',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-sql',
  \ 'coc-graphql',
  \ 'coc-emmet',
  \ 'coc-rls',
  \ 'coc-glslx',
  \ 'coc-vimlsp',
  \ 'coc-css',
  \ ]
" Set autocomplete with TAB 
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
" Settings for emmet to expand abbreviation when TAB is pressed
augroup EmmetSettings
  autocmd! FileType html imap <tab> <plug>(emmet-expand-abbr)
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
" Disable scrollbars (hackers don't use scrollbars for navigation)
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
