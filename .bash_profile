umask 022
ulimit -c 0

export PAGER=less
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
export LANG=ja_JP.UTF-8
export SVNEDITOR=vim
export GREP_COLOR='1;37;41'
export LS_COLORS='no=01;37:fi=00:di=01;36:ln=01;32:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;32;01:ex=01;33:*core=01;31:'
export MYSQL_PS1='([32m\u[00m@[33m\h[00m) [34m[\d][00m > '

alias grep='grep -E --color=auto'
alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'
alias la='ls -ah'
alias ll='ls -lhG'
alias ls='ls --color=auto --show-control-chars'

test -r ~/.bashrc && . ~/.bashrc
