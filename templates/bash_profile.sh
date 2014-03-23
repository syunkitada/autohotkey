echo '
# -------------------------------------------------------------
# environment

# basic
export TZ=Asia/Tokyo
export TERM='xterm-256color'

# history
export HISTCONTROL="ignoreboth"
export HISTFILESIZE="4096"
export HISTSIZE="4096"

# set editor
export EDITOR="/usr/bin/vim"

# -------------------------------------------------------------
# terminal

# prompt
PS1="
\[\e[0;37m\](\t)\[\e[00m\] [\u@\[\e[1;31m\]\H\[\e[00m\]:\w | Retv:${?} Jobs:\j]
$ "

export PS1=$PS1

# -------------------------------------------------------------
# complete
# Tab押した時の候補を設定できる
# cd コマンド押した時に、ディレクトリだけ表示する
complete -d cd


# -------------------------------------------------------------
# alias

# for interactive operation
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias vimsh="vim -c :VimShell"
alias vimf="vim -c :VimFiler"

# alias for misc
alias grep="grep --color"

# alias for some shortcuts for different directory listings
alias ls="ls -hF --color=always --show-control-chars"
alias ll="ls -l"
alias la="ls -A"
alias l="ls -CF"

alias vim="vim -c \"
set nocompatible
set tabstop=4
set autoindent
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase

set smartcase
set number

set iminsert=0
set imsearch=0

set virtualedit=block

set wildmenu wildmode=list:full 
set backspace=start,eol,indent
\""
' > ~/.bash_profile && source ~/.bash_profile
