function wsdot --wraps='xdotool windowsize 88080388 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wsdot xdotool windowsize 88080388 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize 88080388 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
