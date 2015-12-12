#!/bin/sh


function session-command {
  tmux new-session -d -s server-connections
    tmux new-window -t server-connections:2 -n '<ssh to some server>'
    tmux send -t <window name> <command> ENTER
  done
  tmux attach -t server-connections
}

function session {
  tmux new-session -d -s server-connections
  tmux new-window -t server-connections:2 -n '<ssh to some server>'
  tmux attach -t server-connections
}

