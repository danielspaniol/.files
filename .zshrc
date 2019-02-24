source $HOME/.zprofile

unsetopt beep
bindkey -v
alias :q=exit
alias :wq=exit
alias zshrc="$EDITOR $HOME/.zshrc && source $HOME/.zshrc"
alias i3rc="$EDITOR $HOME/.config/i3/config"
alias ls='ls --color'
alias lsa='ls -al'

_newline=$'\n'
_username='%F{2}%n%f'
_in='%F{8}in%f'
_directory='%F{2}%~%f'
_at='%F{8}at%f'
_time='%F{2}%*%f'
_status='%(?.%F{2}.%F{9})%?%f'
_status1='%?'
export PS1="${_newline}${_username} ${_in} ${_directory} ${_at} ${_time}  (${_status})${_newline}$ "
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
