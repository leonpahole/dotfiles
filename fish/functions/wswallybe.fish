function wswallybe --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-app && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wswallybe xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-app && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-app && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
