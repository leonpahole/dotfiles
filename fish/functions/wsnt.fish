function wsnt --wraps='xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/NoteTakerExtension && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim' --description 'alias wsnt xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/NoteTakerExtension && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim'
  xdotool windowsize (xdotool getactivewindow) 100% 100% && cd /home/leonpahole/PersonalProjects/NoteTakerExtension && tmux split-window -v -p 20 && tmux select-pane -t 0 && nvim $argv; 
end
