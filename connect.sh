#!/usr/bin/env bash

FILE=~/.external-keyboard-and-trackpad.txt

if [[ -f $FILE ]]; then
  xargs -n 1 blueutil --connect < $FILE
else
  echo "$FILE not found"
fi
