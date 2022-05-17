
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias camoff='sudo rmmod uvcvideo'
alias ffmpeg="ffmpeg -hide_banner"
alias idf="source /home/michal/esp-idf/export.sh"
alias fanmax="echo level full-speed | sudo tee /proc/acpi/ibm/fan"
alias fanauto="echo level auto | sudo tee /proc/acpi/ibm/fan"


autoload -U colors && colors
PS1="%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[cyan]%}%m %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%  "
