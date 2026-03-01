set show-all-if-ambiguous on
set completion-ignore-case on

[[ -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

eval "$(zoxide init bash --cmd cd)"
eval "$(starship init bash)"
