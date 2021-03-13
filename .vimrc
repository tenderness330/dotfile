"vim-plug plugin
call plug#begin('~/.vim/plugged')
  " languages settings
  Plug 'lighttiger2505/sqls.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'plasticboy/vim-markdown' , { 'for': 'markdown'}
  Plug 'previm/previm' , { 'for': 'markdown'}
  Plug 'mattn/sonictemplate-vim'
  Plug 'sebdah/vim-delve'

  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'mattn/vim-lsp-settings'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'

  Plug 'hashivim/vim-terraform' , { 'for': 'terraform'}
  "Plug 'juliosueiras/terraform-lsp'

  Plug 'airblade/vim-gitgutter'
  Plug 'gotchane/vim-git-commit-prefix'
  Plug 'iberianpig/tig-explorer.vim'

  " language plugins
  Plug 'vim-jp/vimdoc-ja'
  Plug 'thinca/vim-ref'
  Plug 'skanehira/translate.vim'

  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'lambdalisue/fern.vim'
  Plug 'mattn/vim-lexiv'
  Plug 'mattn/webapi-vim'

  "view's plugins
  Plug 'cocopon/iceberg.vim'
  Plug 'wadackel/vim-dogrun'
  Plug 'tomasr/molokai'
  Plug 'sjl/badwolf'
  Plug 'jacoborus/tender.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'mechatroner/rainbow_csv'
  Plug 'skanehira/preview-markdown.vim'

  " input plugins
  "Plug 'machakann/vim-sandwich'
call plug#end()

" lang settings
set helplang=ja,en

" input settings
set expandtab
set belloff=all
set tabstop=2
set softtabstop=2
set shiftwidth=2
set formatoptions+=B
set smartindent

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab
augroup END

if executable('fcitx-remote')
  inoremap <silent> <ESC> <ESC>:call system('fcitx-remote -c')<CR>
endif

set t_SI+=[<r
set t_EI+=[<s[<0t
set t_te+=[<0t[<s
set ttimeoutlen=20

if &term =~ 'screen-256color'
  let &t_EI .= "\ePtmux;\e\e[<0t\e\\"
elseif &term =~ 'xterm'
  let &t_EI .= "\e[<0t"
endif

" view settings
"set termguicolors
set cursorline
colorscheme badwolf
set background=dark
set number
syntax enable
set signcolumn=yes

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
let g:asyncomplete_popup_delay = 1

" Previm settings
let g:previm_open_cmd = 'brave.exe'
let g:previm_wsl_mode = 1

let g:terraform_align=1
let g:terraform_fmt_on_save=1

let g:lsp_settings = {
\   'pyls': {
\     'workspace_config': {
\       'pyls': {
\         'configurationSources': ['flake8']
\       }
\     }
\   },
\}

let g:sonictemplate_vim_template_dir = [
\ '~/.vim/template'
\ ]

