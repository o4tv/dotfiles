{
  programs.bash.profileExtra = ''[ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ] && (tmux attach -t main || tmux new -s main)'';

  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./tmux.conf;
  };
}
