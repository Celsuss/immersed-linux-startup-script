#!/bin/sh

# active_monitors = xrandr --listactivemonitors # Get list of active monitors
# active_monitors = xrandr | grep " connected"

xrandr --addmode HDMI-1-1 1400x900
xrandr --output HDMI-1-0 --primary --right-of eDP-1 \
       --output eDP-1 --mode 1920x1080 \
       --output HDMI-1-1 --mode 1400x900 --right-of HDMI-1-0
~/.local/bin/Immersed/Immersed-x86_64.AppImage
xrandr --output HDMI-1-0 --primary --right-of eDP-1 \
       --output eDP-1 --mode 1920x1080

# Original
# xrandr --addmode HDMI-1 1400x900
# xrandr --output DP-3-2 --pos 0x0 --output HDMI-1 --mode 1400x900 --right-of DP-3-2 --output DP-3-3 --right-of HDMI-1
# ~/.local/bin/Immersed/Immersed-x86_64.AppImage
# xrandr --output HDMI-1 --off --output DP-3-3 --right-of DP-3-2
