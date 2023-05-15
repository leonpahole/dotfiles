#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -s $SCRIPT_DIR/nvim/ ~/.config/nvim
ln -s $SCRIPT_DIR/.tmux.conf ~/.tmux.conf
