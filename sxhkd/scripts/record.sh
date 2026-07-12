#!/bin/bash
if pgrep -x ffmpeg > /dev/null; then
  killall ffmpeg
else
  ffmpeg -f x11grab -i :0 ~/Videos/Screenrecord_$(date +%Y-%m-%d_%H-%M-%S).mp4
fi
