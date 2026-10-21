#!/bin/bash
if ! [ "$(pactl list sink-inputs short)" = "" ]; then
  echo on
else
  echo "%{F#707880}off%{F-}";
fi
