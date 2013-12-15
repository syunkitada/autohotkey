# -------------------------------------------------------------
# environment

# time zone
export TZ=Asia/Tokyo

# history
# ignoreboth: 空白で始まるコマンドと重複コマンドを無視する
export HISTCONTROL="ignoreboth"
export HISTFILESIZE="4096"
export HISTSIZE="4096"


# -------------------------------------------------------------
# terminal

# prompt
export PS1="\[${_PromptColor}\]
[ \u@\H:\w | $(/bin/date '+%Y-%m-%d %H:%M:%S') | Retv:\$? Jobs:\j ]
# \[\e[0m\]"


# -------------------------------------------------------------
# complete
# Tab押した時の候補を設定できる
# cd コマンド押した時に、ディレクトリだけ表示する
complete -d cd


# -------------------------------------------------------------
# alias

# for interactive operation
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'

# alias for misc
  alias grep='grep --color'

# alias for some shortcuts for different directory listings
  alias ls='ls -hF --color=always --show-control-chars'
  alias ll='ls -l'
  alias la='ls -A'
  alias l='ls -CF'

