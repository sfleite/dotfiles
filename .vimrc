

" --------------------------------------
filetype on
syntax enable
syntax on
filetype plugin on
filetype indent on
set modifiable
set nocompatible
set encoding=utf-8


" --------------------------------------
"mostra o modo em que estamos
set showmode 


" --------------------------------------
"faz o vim ignorar maiúsculas e minúsculas nas buscas
set ignorecase 


" --------------------------------------
"  linas destacadas
set cursorline
" hi CursorLine ctermbg=yellow cterm=none

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

" if $TMUX == ''
"     set clipboard+=unnamed
" endif


"------------------------------------
" desabilita o corretor ortográfico
set nospell

" por padrão verificar a ortografia  
" set spell

" adicionando o dicionário português do Brasil e inglês
set spelllang=pt,en 

" alterando a forma como o vim sinaliza as palavras erradas
highlight clear SpellBad
highlight SpellBad term=reverse cterm=underline

" utilizar o dicionário como fonte das palavras sugeridas no autocompletar
" set dictionary=/usr/share/dict/words
set complete+=kspell


"------------------------------------
" Mostra nome do arquivo no rodape da tela
"set title

" Envia mais caracteres ao terminal, melhorando o redraw de janelas
set ttyfast

" mostrar o número de linhas 
set nu! 

" quebrar linha respeitando as palavras
set linebreak 


"------------------------------------
"Better Esc
inoremap jj <Esc>
nnoremap JJJJ <Nop>


"------------------------------------
" Vundle
" https://github.com/gmarik/Vundle.vim

filetype off                  " required

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
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'vim-scripts/VOoM'
Bundle 'kshenoy/vim-signature'
" Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'JuliaLang/julia-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'Lokaltog/powerline'
Bundle 'vim-scripts/tComment'
Bundle 'altercation/vim-colors-solarized'

"------------------------------------
" LATEX
"
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Preview' " pode ser Skim no lugar do Preview

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'


" --------------------------------------
" Desabilitando atalhos chatos como ã para /item e outros
let g:Tex_AdvancedMath = 0 "desabilitando o ~a criar mathcal ou \cite
"let g:Tex_EnvironmentMaps=0
"let g:Tex_EnvironmentMenus=0
"let g:Tex_FontMaps=0
"let g:Tex_FontMenus=0
"let g:Tex_SectionMaps=0
"let g:Tex_SectionMenus=0

" quando reinstalar o plugin é necessário inserir novamente
" esta linha de comando no arquivo 
" ~/.vim/ftpugin/tex.vim
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine 



" --------------------------------------
" ################################################# 
" http://www.lepem.ufc.br/jaa/vim-r-plugin.html

"------------------------------------
" Behavior
"------------------------------------
"let maplocalleader = ","
"let mapleader = ";"

"------------------------------------
" Appearance
"------------------------------------
" colorscheme southernlights

"------------------------------------
" Showmarks
"------------------------------------
let marksCloseWhenSelected = 0
let showmarks_include="abcdefghijklmnopqrstuvwxyz"

"------------------------------------
" Vim-R-plugin
"------------------------------------
let vimrplugin_objbr_place = "console,right"
if $DISPLAY != ""
	let vimrplugin_openpdf = 1
	let vimrplugin_openhtml = 1
endif
if has("gui_running")
	inoremap ,<tab> <c-x><c-o>
	inoremap .<tab> <c-x><c-a>
else
	inoremap <Nul> <C-x><C-o>
	inoremap <Nul> <C-x><C-a>
endif

"------------------------------------
" enviar código para o terminal com espaço
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"------------------------------------
" para destacar códigos de .Rmd
" let rrst_syn_hl_chunk = 1
" let rmd_syn_hl_chunk = 1

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
" R
" terminal de saída 
" selecionar iTerm
"let vimrplugin_term_cmd = "/Applications/Utilities/iTerm.app/Contents/MacOS/iTerm -t R"

" selecionar Terminal
"let vimrplugin_term = "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal" 


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


"------------------------------------
" copiar e colar
" vmap <C-c> "*y     " Yank current selection into system clipboard
" nmap <C-c> "*Y     " Yank current line into system clipboard (if nothing is selected)
" nmap <C-v> "*p     " Paste from system clipboard


" --------------------------------------
" Substituido pelo plugin AutoClose
"Ativa fechamento automático para parêntese
"Set automatic expansion of parenthesis/brackets
"inoremap  { {<CR>}<C-O>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>


" --------------------------------------
" Markdown
:nnoremap <leader>md :silent !open -a Marked.app '%:p'<cr>


" ------------------------------
" NERDTree
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"------------------------------
" NerdTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" ------------------------------
" Highlight things that we find with the search
set hlsearch


" ------------------------------
" Python 
" Disable pylint checking every save
" let g:pymode_lint_write = 0

" Set key 'R' for run python code
" let g:pymode_run_key = 'R'

" Load show documentation plugin
" let g:pymode_doc = 1

" Key for show python documentation
" let g:pymode_doc_key = 'K'


"------------------------------
" cCommand - atalho: control _ + control _ 
map <leader>xx <C-_><C-_>


"------------------------------
" autocompletar
" completa busca o nome da função no R ou LaTeX
imap ,<tab> <c-x><c-o>
" completa arguemntos de uma função 
imap .<tab> <c-x><c-a>
" completa palavras buscando nos dicionários, tanto inglês como português
imap ,.<tab> <C-x><C-k>
" completa linhas inteiras com base nas linhas que já existem no arquivo
imap .,<tab> <C-x><C-l>

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
" configuração da powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim


"------------------------------
" snipMate
" arquivos Rnw usando snippets de r tex e rnoweb
au BufRead,BufNewFile *.rnw set ft=rnoweb.r.tex
" arquivos  Rmd usando snippets de r e rmd
au BufRead,BufNewFile *.rmd set ft=rmd.r


"------------------------------
" Backup files
" turn on backup
set backup
" Set where to store backups
set backupdir=~/.vimbackup
" Set where to store swap files
set dir=~/.vimbackup

