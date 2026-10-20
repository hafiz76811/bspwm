#!/bin/bash
if nmcli radio wifi | grep -q enabled; then
  if ! [ "$(iwgetid -r)" = "" ]; then
    echo "%{F#c5c8c6}$(iwgetid -r)%{F-}";
  else
    echo "%{F#707880}disconnected%{F-}";
  fi
elif nmcli radio wifi | grep -q disabled; then
  echo "%{F#707880}disabled%{F-}";
fi
