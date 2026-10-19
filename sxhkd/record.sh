#!/bin/bash
if pgrep -x ffmpeg > /dev/null; then
  killall ffmpeg
  notify-send -u low 'Screenrecord' 'Screen recording has started!' -i ~/.config/sxhkd/icons/video-slash.png
else
  ffmpeg -f x11grab -i :0 ~/Videos/Screenrecord_$(date +%Y-%m-%d_%H-%M-%S).mp4 &
  notify-send -u low 'Screenrecord' 'Screen recording has stopped!' -i ~/.config/sxhkd/icons/video-solid.png
fi
