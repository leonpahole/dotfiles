if status is-interactive
    and not set -q TMUX
    exec tmux
end

# pnpm
set -gx PNPM_HOME "~/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# direnv
direnv hook fish | source

set -gx PATH "~/.dotnet" $PATH
set -gx PATH "~/.cargo/bin" $PATH

# fish_vi_key_bindings

export PATH="$PATH:/home/leonpahole/.bin"

export FLYCTL_INSTALL="/home/leonpahole/.fly"

export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH="/opt/nvim:$PATH"
export PATH="/opt/neovide:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/leonpahole/anaconda3/bin/conda
    eval /home/leonpahole/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<
