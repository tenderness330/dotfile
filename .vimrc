"vim-plug plugin
call plug#begin('~/.vim/plugged')
  Plug 'plasticboy/vim-markdown'
  Plug 'previm/previm'

  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  Plug 'hashivim/vim-terraform'
  Plug 'juliosueiras/vim-terraform-completion'
  Plug 'chase/vim-ansible-yaml'
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
set smartindent

" view settings
set termguicolors
set cursorline
set background=dark
let g:solarized_termcolors=256
colorscheme iceberg
set number
syntax enable
let g:airline_powerline_fonts = 1
let g:indent_guides_auto_colors = 1

if executable('terraform-lsp')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'terraform-lsp',
    \ 'cmd': {server_info->['terraform-lsp']},
    \ 'whitelist': ['terraform','tf'],
    \ })
endif

" search settings
set incsearch
set hlsearch

let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_disabled = 1
