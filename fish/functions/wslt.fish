function wslt --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/LightTwist/LightTwist2Frontend && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wslt xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/LightTwist/LightTwist2Frontend && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/Work/LightTwist/LightTwist2Frontend && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
