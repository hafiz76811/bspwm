#!/bin/bash

files=(
	.zcompdump
	.zlogout
	.zprofile
	.zshenv
	.zsh_history
)

for file in ${files[@]}; do
	if ! [ -f "/home/$USER/$file" ]; then
		touch ~/$file
	fi
done


if ! [ -f "/home/$USER/.zshrc" ]; then
	if [ -f "/home/$USER/.config/zsh/zshrc" ]; then
		ln -s ~/.config/zsh/zshrc ~/.zshrc
	fi
fi
