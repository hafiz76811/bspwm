#!/bin/bash
if ! [ "$(pactl list sink-inputs short)" = "" ]; then
  echo on
else
  echo off
fi
