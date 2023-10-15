function wsdot --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wsdot xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/dotfiles && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
