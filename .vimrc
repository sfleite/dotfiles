" --------------------------------------
"  General
filetype on
syntax enable
syntax on
filetype plugin on
filetype indent on
set modifiable
set nocompatible
set encoding=utf-8

"  sem quebra de linha por padrão
set nowrap

" destacar coluna e linha onde esta o curso 
set cuc cul 

"mostra o modo em que estamos
set showmode 

"faz o vim ignorar maiúsculas e minúsculas nas buscas
set ignorecase 

"  linas destacadas
set cursorline

" usar 256 cores
set t_Co=256


" --------------------------------------
" esquema de cores
" iterm2 color: solarized dark
" colorscheme sahara
" set background=dark
colorscheme solarized
if has('gui_running')
    set background=light
else
    " set background=light
    set background=dark
endif


" ---------------------------------------------------------------------
" OPTIONS
" ---------------------------------------------------------------------
"
" Set these in your vimrc file prior to calling the colorscheme.
"
" option name               default     optional
" ------------------------------------------------
" g:solarized_termcolors=   16      |   256
let g:solarized_termcolors=256
" g:solarized_termtrans =   0       |   1
" g:solarized_degrade   =   0       |   1
" g:solarized_bold      =   1       |   0
" g:solarized_underline =   1       |   0
" g:solarized_italic    =   1       |   0
" g:solarized_contrast  =   "normal"|   "high" or "low"
" g:solarized_visibility=   "normal"|   "high" or "low"
" ------------------------------------------------

" manter cores do texto selecionado do esquena de cores do sahara
highlight Visual       term=NONE cterm=NONE ctermfg=222  ctermbg=64   gui=NONE guifg=#ffd787 guibg=#5f8700


" ------------------------------
" funções do mouse funcionando no terminal com tmux
set mouse=a


" ------------------------------
" make backspace work like most other apps
set backspace=2 


" setas do teclado funcinarem no mode inserção com tmux
nnoremap <Esc>A <up>
inoremap <Esc>C <right>
inoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>


" Enabling clipboard
set clipboard=unnamed


"------------------------------------
" desabilita o corretor ortográfico
" set nospell

" adicionando o dicionário português do Brasil e inglês
set spelllang=pt,en 

" alterando a forma como o vim sinaliza as palavras erradas
highlight clear SpellBad
highlight SpellBad term=reverse cterm=underline

" utilizar o dicionário como fonte das palavras sugeridas no autocompletar
" set dictionary=/usr/share/dict/words
set complete+=kspell


"------------------------------------
" Envia mais caracteres ao terminal, melhorando o redraw de janelas
set ttyfast

" mostrar o número de linhas 
set nu! 

" relative number in lines
set relativenumber

" quebrar linha respeitando as palavras
set linebreak 


"------------------------------------
"Better Esc
inoremap jj <Esc>
nnoremap JJJJ <Nop>


"------------------------------------
" Vundle
" https://github.com/gmarik/Vundle.vim

" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Meus plugins
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/AutoClose'
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'kshenoy/vim-signature'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'JuliaLang/julia-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/tComment'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Lokaltog/powerline'
Bundle 'jpalardy/vim-slime'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tmhedberg/matchit'
Bundle 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'git://github.com/csscomb/vim-csscomb.git'
Bundle 'pangloss/vim-javascript'
Bundle 'hallettj/jslint.vim'
" Bundle 'maksimr/vim-jsbeautify'
Bundle 'wikitopian/hardmode'
Bundle 'itchyny/lightline.vim'


"------------------------------------
" Vim-R-plugin
"------------------------------------
" enviar código para o terminal com espaço
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"------------------------------------
" para destacar códigos de .Rmd
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"------------------------------------
" dividir a janela verticalmente quando executado \rf
let vimrplugin_vsplit = 1

"------------------------------------
" sempre mostrar argumentos das funções no topo
" em uma nova janela no topo do scritp
let vimrplugin_show_args = 1

"------------------------------------
" identar os argumentos de uma função qualquer 
" partindo do '<-'
let r_indent_ess_compatible = 0

"------------------------------------
" eliminar associação de _ com <-
" let vimrplugin_assign = 0
" let vimrplugin_assign_map = <!>

"------------------------------------
" R documentation in a Vim's buffer
let vimrplugin_vimpager = "tabnew"

"------------------------------------
" não renomear o título do pane do tmux com VimR
let vimrplugin_tmux_title = "automatic"

"------------------------------------
" show hidden objects in the list of objects for omni completion
let g:vimrplugin_allnames = 1

"------------------------------------
" forcar o R a carregar esses pacotes ao iniciar, para ajudar no ominicompletation
let vimrplugin_start_libs = "base,stats,graphics,grDevices,utils,methods"


"------------------------------------
" By default, Vim indents code by 8 spaces. Most people prefer 4 " spaces: 
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" mostrar a coluna número 100, para ter uma noção de espaço 
" set colorcolumn=100
" highlight ColorColumn ctermbg=gray
" highlight ColorColumn term=NONE cterm=NONE ctermfg=222  ctermbg=64   gui=NONE guifg=#ffd787 guibg=#5f8700


" --------------------------------------
" Markdown
" \md to open Marked
:nnoremap <leader>md :silent !open -a Marked.app '%:p'<cr>


" ------------------------------
" NERDTree
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:nerdtree_tabs_open_on_gui_startup=0

"------------------------------
" NerdTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" ------------------------------
" Highlight things that we find with the search
" set hlsearch


" ------------------------------
" Python 
" Disable pylint checking every save
let g:pymode_lint_write = 0
" Set key 'R' for run python code
let g:pymode_run_key = 'R'
" Load show documentation plugin
let g:pymode_doc = 1
" Key for show python documentation
let g:pymode_doc_key = 'K'


"------------------------------
" cCommand - atalho: control _ + control _ 
map <leader>xx <C-_><C-_>


"------------------------------
" Maps to resizing a window split
nnoremap <silent> <Leader>, :vertical resize +4<cr>
nnoremap <silent> <Leader>. :vertical resize -4<cr>
nnoremap <silent> <Leader>> :resize +4<cr>
nnoremap <silent> <Leader>< :resize -4<cr>


"------------------------------
" evervim - notas do evernote no vim
" let g:evervim_devtoken='
"
"
"------------------------------
" sempre mostrar a barra inferior com o status
set laststatus=2


"------------------------------
" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightLineModified',
      \   'readonly': 'LightLineReadonly',
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'unite' ? unite#get_status_string() : 
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"------------------------------
" snipMate
" arquivos Rnw usando snippets de r tex e rnoweb
" au BufRead,BufNewFile *.rnw set ft=rnoweb.r.tex
" arquivos  Rmd usando snippets de r e rmd
" au BufRead,BufNewFile *.rmd set ft=rmd.r


"------------------------------
" Backup files
" turn on backup
set backup
" Set where to store backups
set backupdir=~/.vimbackup
" Set where to store swap files
set dir=~/.vimbackup


"------------------------------
" translate shell
" shift-K to view the translation of the word under the cursor.
set keywordprg=trans\ :ja


"------------------------------
" Syntastic - sintax check
" se deixar todas as opções abaixo habilitadas vira uma zona
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


"------------------------------
" Julia
autocmd BufRead,BufNewFile *.jl set filetype=julia


"------------------------------
" vim-slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
" para enviar um comando do vim para termianl com o Julia digitar: C-c C-c 
" ou espaço em visual mode
" map <Space> <C-c><C-c>


"------------------------------
" desabilitar o barulho chato no macvim e 
" tb no vim, independente do terminal
autocmd! GUIEnter * set vb t_vb=


"------------------------------
" Vim Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_post_private = 1
" let g:gist_post_anonymous = 1
let g:gist_open_browser_after_post = 1


"------------------------------
" HTML
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


"------------------------------
" LaTeX-Box-Team/LaTeX-Box
let g:LatexBox_split_type="new"
let g:tex_flavor = "latex"      " para todo arquivo .tex ser latex
" let g:LatexBox_Folding=1        " folding ver foldmethod=expr
" let g:LatexBox_fold_toc=1


"------------------------------
" Vim Hard Mode
" desables hjkl, arrow keys and page up/down
" \h para mudar o modo de uso
autocmd VimEnter,BufNewFile,BufReadPost * silent! call EasyMode()
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>


"------------------------------
" Disable arrow keys
" visual mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>


"------------------------------
" Show invisible characters
" set list | set nolist
" set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 
set nolist
set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:\|\ 
hi NonText ctermfg=darkgrey guifg=darkgrey 
hi clear SpecialKey 
hi link SpecialKey NonText 


"------------------------------
" fold method
" set foldmethod=syntax
"
" let javaScript_fold=1         " JavaScript
" let perl_fold=1               " Perl
" let php_folding=1             " PHP
" let r_syntax_folding=1        " R
" let ruby_fold=1               " Ruby
" let sh_fold_enabled=1         " sh
" let vimsyn_folding='af'       " Vim script
" let xml_syntax_folding=1      " XML

" if latex use expr method
" autocmd FileType tex setlocal foldmethod=expr

" column scroll-binding on <leader>sb
"  noremap <silent> <leader>sb :<c-u>let @z=&so<cr>:set so=0 noscb<cr>:bo vs<cr>ljzt:setl scb<cr><c-w>p:setl scb<cr>:let &so=@z<cr>

