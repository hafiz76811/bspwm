#!/bin/bash

files=(
	.zcompdump
	.zlogout
	.zprofile
	.zshenv
	.zsh_history
	.zshrc
)

for file in ${files[@]}; do
	if ! [ -f "/home/$USER/$file" ]; then
		touch /home/$USER/$file
	else
		echo "$file sudah ada!"
	fi
done
