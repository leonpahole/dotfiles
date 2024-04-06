function wstrbe --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-be && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wstrbe xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-be && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Truest/truest-be && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
