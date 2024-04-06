#!/usr/bin/env bash

declare -A links=(
	["nvim"]="~/.config/nvim"
	["fontconfig"]="~/.config/fontconfig"
	["fonts"]="~/.local/share/fonts"
	["scripts"]="~/scripts"
	[".alacritty.yml"]="~/.alacritty.yml"
	[".alacritty_theme.yaml"]="~/.alacritty_theme.yaml"
	["fish"]="~/.config/fish"
	[".tmux.conf"]="~/.tmux.conf"
	# add more symlinks here, ["name"]="path/to/link"
)

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

for source in "${!links[@]}"; do
	target="${links[$source]}"

	# Expand the tilde (~) in the paths
	source_name=$(eval echo "$source")
	source="$SCRIPT_DIR/$source_name"

	target=$(eval echo "$target")

	# Check if the link already exists
	if [ -e "$target" ]; then
		echo "File or directory already exists at $target, not linking"
	else
		# Create the symbolic link
		ln -s "$source" "$target"
		echo "Symbolic link created from $source to $target"
	fi
done
