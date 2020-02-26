"vim-plug plugin
call plug#begin('~/.vim/plugged')
  Plug 'plasticboy/vim-markdown' , { 'for': 'markdown'}
  Plug 'previm/previm' , { 'for': 'markdown'}
  Plug 'mattn/sonictemplate-vim'

  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'mattn/vim-lsp-settings'

  Plug 'hashivim/vim-terraform' , { 'for': 'terraform'}
  Plug 'juliosueiras/vim-terraform-completion' , { 'for': 'terraform'}

  Plug 'nathanaelkane/vim-indent-guides'

  Plug 'cocopon/iceberg.vim'
  Plug 'vim-airline/vim-airline'
call plug#end()

" input settings
set expandtab
set autoindent
set belloff=all
set tabstop=2
set shiftwidth=2

" view settings
set t_ut= " for windows color bug
set termguicolors
set cursorline
set background=dark
let g:solarized_termcolors=256
colorscheme iceberg
set number
syntax enable
if !has("gui_running")
  let g:airline_powerline_fonts = 1
endif

if executable('terraform-lsp')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'terraform-lsp',
    \ 'cmd': {server_info->['terraform-lsp']},
    \ 'whitelist': ['terraform','tf'],
    \ })
endif

if executable('gopls')
  au User lsp_setup call lsp#register_server({
		\ 'name': 'gopls',
		\ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
		\ 'whitelist': ['go'],
		\ })
  autocmd BufWritePre *.go LspDocumentFormatSync
endif

if executable('go-langserver')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'go-langserver',
		\ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
		\ 'whitelist': ['go'],
		\ })
	autocmd BufWritePre *.go LspDocumentFormatSync
endif

command Term terminal ++noclose

" search settings
set incsearch
set hlsearch
set ignorecase

let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_disabled = 1
