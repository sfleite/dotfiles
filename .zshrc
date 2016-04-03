# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="clean"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history python pip brew brew-cask osx tmuxinator tmux web-search vundle r git-flow)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin/:/usr/X11/bin:/Library/TeX/texbin/"
# export PATH=~/anaconda/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# local bin
export PATH="~/.local/bin:$PATH"

export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
# postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
# mysql
export PATH=$PATH:/usr/local/mysql/bin

# You may need to manually set your language environment
# necessário colocar tudo isso para o mosh funcionar
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias vim='/usr/local/Cellar/macvim/7.4-77/bin/mvim -v --ervername VIM'
alias vim='vim --servername VIM'
alias py='/usr/local/bin/python'    # py: python instalado do brew
alias julia='/Applications/Julia-0.3.6.app/Contents/Resources/julia/bin/julia'
alias ju=julia
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias tmux.conf='vim ~/.tmux.conf'
alias tt='tmuxinator'
alias rmtrash='cd ~/.Trash/ ; rm -R * ; cd'
alias tmux='tmux -u'	# tmux aberto com utf8
alias t='trans'	# translate 
alias t1='trans pt:en -I -b'	# translate 
alias t2='trans pt:en -I'	# translate 
alias t3='trans en:pt -I -b'	# translate 
alias t4='trans en:pt -I'	# translate 
alias c='g++' # compilador g++ (c++)
alias comandos='vim ~/Google\ Drive/Profissional/Unix/comandos.txt'
alias gf='git flow'
alias cnpq='~/.ssh/cnpq.pem.txt'
