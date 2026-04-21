#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

alias jailbreak-android="fastboot oem set-gpu-preemption 0 androidboot.selinux=permissive"
