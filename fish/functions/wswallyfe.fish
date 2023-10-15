function wswallyfe --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-web && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wswallyfe xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-web && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/Povio/Wally/reservation-web && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
