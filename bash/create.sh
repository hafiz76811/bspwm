#!/bin/bash

files=(
	.bash_history
	.bash_logout
	.bash_profile
)

for file in ${files[@]}; do
	if ! [ -f "/home/$USER/$file" ]; then
		touch ~/$file
	fi
done


if ! [ -f "/home/$USER/.bashrc" ]; then
	if [ -f "/home/$USER/.config/bash/bashrc" ]; then
		ln -s ~/.config/bash/bashrc ~/.bashrc
	fi
fi
