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
