#!/usr/bin/env zsh

#For this to work you need next packages:cmatrix, cava and hyfetch(hyfetch is like any other fetch execpt it has a build in config that will launch the first time you run hyfetch. I like it more then, fastfetch or neofetch. Its up to you what you want to use.)

#Makes tmux full screan
wmctrl -r :ACTIVE: -b add,fullscreen

#session name
SESSION="FUN"

#session panels/terminals with commands
tmux new-session -d -s "$SESSION" 'cmatrix -C red'
tmux split-window -h -t "$SESSION:0.0" 'hyfetch; read'
tmux split-window -v -t "$SESSION:0.0" 'cava'

#attaches the tmux session
tmux attach-session -t "$SESSION"