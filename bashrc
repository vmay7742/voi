# .bashrc

force_color_prompt=yes


PS1="\w > "
#PS1='\[\033[01;37m\]\w\[\033[01;37m\] \[\033[00;31m\]> \[\033[00m\]'

if test -n "$KITTY_INSTALLATION_DIR" && test -f "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then
    export KITTY_SHELL_INTEGRATION="enabled"
    export KITTY_INSTALLATION_DIR="/usr/lib/kitty/"
    source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#source ~/aliases

alias v='vim'
alias t='tmux'
alias l='ls -1a'
alias b='bc -q'
alias s='watch -n 1 sensors'
alias c='clear'
alias gif='sxiv -a'
alias ff='ffprobe -hide_banner'
alias ffs='ffplay -hide_banner'
alias xdo='xdotool selectwindow getwindowgeometry'
