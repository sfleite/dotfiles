

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
set nospell

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
Bundle 'vim-scripts/VOoM'
Bundle 'kshenoy/vim-signature'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'JuliaLang/julia-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/tComment'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Eckankar/vim-latex-folding'
Bundle 'klen/python-mode'
Bundle 'Lokaltog/powerline'
Bundle 'jpalardy/vim-slime'


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
set colorcolumn=100
" highlight ColorColumn ctermbg=gray
highlight ColorColumn term=NONE cterm=NONE ctermfg=222  ctermbg=64   gui=NONE guifg=#ffd787 guibg=#5f8700


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
" autocompletar
" completa busca o nome da função no R ou LaTeX
imap ,<tab> <C-x><C-o>
" completa arguemntos de uma função 
imap .<tab> <C-x><C-a>
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
