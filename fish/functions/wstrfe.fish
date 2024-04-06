function wstrfe --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-fe && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wstrfe xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-fe && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-fe && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
