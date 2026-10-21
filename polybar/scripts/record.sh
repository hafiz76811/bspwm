#!/bin/bash
if pgrep -x ffmpeg > /dev/null; then
  echo running
else
  echo "%{F#707880}off%{F-}";
fi
