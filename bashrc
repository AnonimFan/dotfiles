#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
set -o vi
alias vi="vim"
export EDITOR='vi'
export VISUAL='vi'
HISTSIZE= HISTFILESIZE= # Infinite history.

function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo "$RETVAL"
}

export PS1="\[\e[32m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\] \[\e[31m\]\`nonzero_return\`\[\e[m\] \[\e[37m\]in\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[34m\]\\$\[\e[m\] "

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#eval $(dircolors -b $HOME/.dircolors)
alias ls='ls --color'
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS
alias net="doas dhcpcd ens33"
net
printf "type startx to get gui! unless you are in a gui :) \n"
source aliasrc
