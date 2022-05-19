setopt noautomenu
setopt nomenucomplete

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[H" beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[F" end-of-line

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias camoff='sudo rmmod uvcvideo'
alias ffmpeg="ffmpeg -hide_banner"
alias idf="source /home/michal/esp-idf/export.sh"
alias fanmax="echo level full-speed | sudo tee /proc/acpi/ibm/fan"
alias fanauto="echo level auto | sudo tee /proc/acpi/ibm/fan"
alias ..="cd .."
alias ls="ls --color"

export TERM="xterm-256color"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U colors && colors
PS1="%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[cyan]%}%m %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%  "
