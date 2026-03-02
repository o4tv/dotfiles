[[ -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

eval "$(zoxide init bash --cmd cd)"
eval "$(starship init bash)"
