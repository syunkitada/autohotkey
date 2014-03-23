rm -f ~/.bash_profile && \
rm -f ~/.vimrc && \
echo '
# -------------------------------------------------------------
# environment

# basic
export TZ=Asia/Tokyo
export TERM="xterm-256color"

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
' > ~/.bash_profile && source ~/.bash_profile \
&& \
echo '
" setting syntax color
syntax on

" visualize tab
highlight Tab ctermbg=234
au BufWinEnter * let w:m1 = matchadd("Tab", '\''\t'\'')
au WinEnter * let w:m1 = matchadd("Tab", '\''\t'\'')

" visualize eol of space and tab
highlight WhitespaceEOL ctermbg=239
au BufWinEnter * let w:m1 = matchadd("WhitespaceEOL", '\''[ \t]\+$'\'')
au WinEnter * let w:m1 = matchadd("WhitespaceEOL", '\''[ \t]\+$'\'')

" visualize double-byte space
highlight ZenkakuSpace cterm=underline ctermbg=203
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '\''　'\'')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '\''　'\'')

" indent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" show number of lines
set number

" enable mouse operation
set mouse=nv

" disable default japanise input
" disable default japanise input in insert mode
set iminsert=0
" disable default japanise input in search mode
set imsearch=0

" no swapfile, backupfile
set noswapfile
set nobackup

" set to block the selected range of rectangle visual mode
set virtualedit=block


" set completion on command line mode
" list:full is show completion list, if there are two more completions
set wildmenu wildmode=list:full

" enable backspace on start, end, indent
" start  : enable delete on enter insert mode
" eol    : enable delete end of line
" indent : enable delete indent(autoindent)
set backspace=start,eol,indent

" for teraterm
" eliminate the wait time after pressing the ESC key in insert mode
" let &t_SI .= "\e[?7727h"
" let &t_EI .= "\e[?7727l"
" inoremap <special> <Esc>O[ <Esc>
set timeoutlen=1000 ttimeoutlen=0
' > ~/.vimrc
