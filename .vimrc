call plug#begin('~/.vim/plugged')
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
Plug 'python-mode/python-mode'
Plug 'tpope/vim-fugitive' 
Plug 'sheerun/vim-polyglot' 
Plug 'vim-scripts/sqlcomplete.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'dense-analysis/ale' 
Plug 'MaxMEllon/vim-jsx-pretty' 
Plug 'jparise/vim-graphql'
Plug 'yuezk/vim-js'
Plug 'tpope/vim-surround' 
if empty(glob('~/.vim/plugged/'))
    PlugInstall
endif
call plug#end()
syntax enable
colo onedark
nnoremap <SPACE> <Nop>
let g:mapleader = " "
let g:airline_theme='onedark'
set laststatus=2
let g:airline#extensions#lsp#enabled = 1
let g:airline_section_l = airline#section#create(['filename', 'paste', 'lsp'])
let g:airline_section_r = airline#section#create(['lineinfo', 'percent', 'fileformat', 'fileencoding', 'filetype'])
let g:airline_section_y = airline#section#create(['lsp_server'])
let g:airline#parts#filename#formatter = 'shorten'
let g:airline#parts#filename#shorten_length = 85
let g:lsp_diagnostics_enabled = 1
let g:lsp_client_ts_server_cmd = 'tsserver'
let g:lsp_client_svelte_language_server_cmd = 'svelte-language-server'
let g:lsp_client_glsl_cmd = 'glsl-language-server'
let g:lsp_client_python_cmd = 'pyright-langserver'
let g:lsp_client_sqls_cmd = 'sqls'
let g:lsp_client_clangd_cmd = 'clangd'

autocmd FileType typescript,livescript,javascript,jsx,tsx call lsp#register_server({
    \ 'name': 'tsserver',
    \ 'cmd': {server_info -> ['tsserver']},
    \ 'whitelist': ['typescript', 'livescript', 'javascript'],
    \ })
autocmd FileType svelte call lsp#register_server({
    \ 'name': 'svelte-language-server',
    \ 'cmd': {server_info -> ['svelte-language-server']},
    \ })
autocmd FileType glsl,frag,vert call lsp#register_server({
    \ 'name': 'glsl',
    \ 'cmd': {server_info -> ['glsl-language-server']},
    \ })
autocmd FileType python,py call lsp#register_server({
    \ 'name': 'pyright-langserver',
    \ 'cmd': {server_info -> ['pyright-langserver', '--stdio']},
    \ })
autocmd FileType sql,db call lsp#register_server({
    \ 'name': 'sqls',
    \ 'cmd': {server_info -> ['sqls']},
    \ })

autocmd FileType c,cpp,cxx call lsp#register_server({
    \ 'name': 'clangd',
    \ 'cmd': {server_info -> ['clangd']},
    \ })
nnoremap <C-g> :!g++ % -o %:r && chmod u+x ./%:r && ./%:r<CR>
nnoremap <C-y> :!python3 %<CR>
nnoremap <C-n> :w<CR>:!node %<CR> 
nnoremap <C-s> :w<CR>:!npx svelte-check %<CR> 
nnoremap <C-p> :CtrlP<CR>
nnoremap <C-b> :!chmod u+x ./%:r && ./%:r<CR>
nnoremap <F2> :w<CR> 
nnoremap <F3> :vsp<CR>
nnoremap <F4> :sp<CR>
nnoremap <F5> :q<CR>
nnoremap <F9> :set invnumber<CR>
nnoremap <F10> :set invrelativenumber<CR>
nnoremap <leader>d :LspDefinition<CR>
nnoremap <leader>h :LspHover<CR>
nnoremap <leader>r :LspRename<CR>
nnoremap <leader>f :LspFormat<CR>
nnoremap <leader>t :ALEToggle<CR>
nnoremap <leader>e :NERDTreeCWD<CR>
set number
set cursorline
set cursorcolumn
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
