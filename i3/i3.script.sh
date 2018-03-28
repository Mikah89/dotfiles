#!/bin/bash

#i3status --config ~/.config/i3/i3status.conf

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bottom bar. Looking at polybar configuration you should see a [bar/bottom] defined
polybar bottom &


echo "Bars launched..."
