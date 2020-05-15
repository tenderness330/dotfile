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


  "view's plugins
  Plug 'cocopon/iceberg.vim'
  Plug 'wadackel/vim-dogrun'
  Plug 'tomasr/molokai'
  Plug 'sjl/badwolf'
  Plug 'jacoborus/tender.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

" input settings
set expandtab
set autoindent
set belloff=all
set tabstop=2
set shiftwidth=2
set formatoptions+=B

if executable('fcitx-remote')
  inoremap <silent> <ESC> <ESC>:call system('fcitx-remote -c')<CR>
endif

set t_SI+=[<r
set t_EI+=[<s[<0t
set t_te+=[<0t[<s
set ttimeoutlen=20

if &term =~ 'screen-256color'
  let &t_EI .= "\ePtmux;\e\e[<0t\e\\"
"elseif &term =~ 'xterm'
"  let
endif

" view settings
"set termguicolors
set cursorline
colorscheme badwolf
set background=dark
set number
syntax enable

if !has("gui_running")
  let g:airline_powerline_fonts = 1
endif
command Term terminal ++noclose

" search settings
set incsearch
set hlsearch
set ignorecase

let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_disabled = 1

" vim-lsp setting
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_virtual_text_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
let g:lsp_signs_information = {'text': 'i'}
let g:lsp_signs_hint = {'text': '?'}

" Previm settings
let g:previm_open_cmd = 'firefox.exe'
let g:previm_wsl_mode = 1
