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

function __check_nvm --on-variable PWD --description 'Do nvm stuff'
if test -f .nvmrc
  set node_version (nvm version)
  set nvmrc_node_version (nvm version (cat .nvmrc))

  if [ $nvmrc_node_version = "N/A" ]
    nvm install
  else if [ $nvmrc_node_version != $node_version ]
    nvm use
  end
end
end

__check_nvm
