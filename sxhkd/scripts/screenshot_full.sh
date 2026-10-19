#!/bin/bash

if ! [ -d "/home/$USER/Pictures" ] || ! [ -d "/home/$USER/Pictures/Screenshots" ]; then

  mkdir -p ~/Pictures/Screenshots

else

  maim ~/Pictures/Screenshots/Screenshot_$(date +%Y-%m-%d_%H-%M-%S).png &&
  notify-send -u low 'Screenshot' 'Saved to your photos.' -i ~/.config/sxhkd/icons/image-regular.png

fi
