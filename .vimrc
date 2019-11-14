"vim-plug plugin
call plug#begin('~/.vim/plugged')
  Plug 'plasticboy/vim-markdown'
  Plug 'previm/previm'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
call plug#end()

" input settings
set expandtab
set autoindent
set belloff=all
set tabstop=2
set shiftwidth=2
set smartindent
command Term term wsl ~

" view settings
set cursorline
syntax enable
color murphy
set number

" search settings
set incsearch
set hlsearch

let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_disabled = 1

" gvim settings
if executable('gvim')
  set ff="unix"
  inoremap <ESC> <ESC>:set iminsert=0<CR>
  set guifont=HackGen\ Console:h14
  set clipboard=unnamed,autoselect
  let g:previm_open_cmd = 'C:\\Program\ Files\ (x86)\\Mozilla\ Firefox\\firefox.exe'
  let g:previm_enable_realtime = 1
endif

