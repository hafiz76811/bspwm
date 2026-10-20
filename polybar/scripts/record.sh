#!/bin/bash
if pgrep -x ffmpeg > /dev/null; then
  echo active
else
  echo "%{F#707880}inactive%{F-}";
fi
