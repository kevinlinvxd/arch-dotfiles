#!/usr/bin/env sh

EXTERNAL_MONITOR="HDMI-0"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar primary -c ~/.config/polybar/config.ini &

if [[ $(xrandr -q | grep "${EXTERNAL_MONITOR} connected") ]]; then
  polybar --reload primary -c ~/.config/polybar/config.ini </dev/null >/var/tmp/polybar-primary.log 2>&1 200>&- &
  polybar --reload primary_external -c ~/.config/polybar/config.ini </dev/null >/var/tmp/polybar-secondary.log 2>&1 200>&- &
else
  polybar --reload primary -c ~/.config/polybar/config.ini </dev/null >/var/tmp/polybar-primary.log 2>&1 200>&- &
fi
