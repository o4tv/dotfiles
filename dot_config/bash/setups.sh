export PATH="$PATH:$HOME/.local/bin"

[[ -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

# pnpm
export PNPM_HOME="/home/tabin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source /usr/share/nvm/init-nvm.sh
eval "$(zoxide init bash --cmd cd)"
eval "$(starship init bash)"
