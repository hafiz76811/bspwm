#!/bin/bash

if ! [ -d "/home/$USER/Videos/" ] || ! [ -d "/home/$USER/Videos/Screenrecords" ]; then

  mkdir -p ~/Videos/Screenrecords

else

  if pgrep -x ffmpeg > /dev/null; then
    killall ffmpeg &&
    notify-send -u low 'Screenrecord' 'Screen recording has stopped.' -i ~/.config/sxhkd/icons/video-slash.png
  else
    ffmpeg -f x11grab -s 1920x1080 -r 30 -i :0.0 -preset fast -pix_fmt yuv420p \
	    ~/Videos/Screenrecords/Screenrecord_$(date +%Y-%m-%d_%H-%M-%S).mp4 &
    notify-send -u low 'Screenrecord' 'Screen recording has started.' -i ~/.config/sxhkd/icons/video-solid.png
  fi

fi
