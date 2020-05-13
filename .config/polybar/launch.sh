#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    export MONITOR=$m 
    echo $MONITOR >> ~/test.txt
    polybar --reload primary &
  done
else
  polybar --reload primary &
fi


# export MONITOR=eDP-1-1
# polybar --reload primary &
# export MONITOR=HDMI-0
# polybar --reload primary &

echo "Bars launched..."