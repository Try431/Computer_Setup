#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
# echo "THIS SHOULD BE HERE TWIIIIIIIICE"

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
# 	# echo "WHAAAAAAAT"
#     MONITOR=$m
#     polybar -l info --reload example &
#   done
# else
#   polybar -l info example &
# fi

# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar --reload primary &
#   done
# else
#   polybar --reload primary &
# fi

# Launch bar1 and bar2
# MONITOR=eDP-1-1 polybar blank &
MONITOR=eDP-1-1 polybar primary 
# MONITOR=HDMI-0 polybar --reload example
# polybar primary &


echo "Bars launched..."