#!/usr/bin/env bash

blueutil --paired \
  | grep "Andreas Knab" | grep "Trackpad\|Keyboard" \
  | cut -d , -f 1 | cut -d " " -f 2 \
  | tee ~/.external-keyboard-and-trackpad.txt \
  | xargs -n 1 blueutil --unpair
