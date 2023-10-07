function wsdot --wraps='cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wsdot cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
