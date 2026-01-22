{
  programs.bash.profileExtra = ''[ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ] && (tmux attach || tmux new)'';

  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./tmux.conf;
  };
}
