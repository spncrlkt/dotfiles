#!/bin/zsh
# mini.sh

files=("~/.vimrc" "~/.config/wezterm/wezterm.lua" "~/.zshrc")
raw_destination="~/dev/dotfiles/airbook"
destination="${raw_destination/#\~/$HOME}"

for file in "${files[@]}"; do
    expanded_file="${file/#\~/$HOME}"
    if [[ -f "$expanded_file" ]]; then
        echo "Copying $expanded_file to $destination"
        cp "$expanded_file" "$destination"
    else
        echo "File not found: $expanded_file"
    fi

done



echo "Copy Operation Completed, Kid"
