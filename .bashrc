# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ds='dirs -v'
alias p='pushd'
#alias p1='pushd +1'
alias p2='pushd +2'
alias p3='pushd +3'
alias p4='pushd +4'

alias po='popd'
alias po2='popd +2'
alias po3='popd +3'
alias po4='popd +4'

alias ls='ls -al'


