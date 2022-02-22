#!/bin/bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

# Set polybar for muti monitors.
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload main -c ~/.config/polybar/config &
fi
# Tray bar
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload date-bar &
  done
else
  polybar --reload date-bar -c ~/.config/polybar/config &
fi
# monitor bar
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mon-bar &
  done
else
  polybar --reload mon-bar -c ~/.config/polybar/config &
fi
# tray bar
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload tray &
  done
else
  polybar --reload tray -c ~/.config/polybar/config &
fi
;;


# # Launch bar
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar main 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
