# Monitor
# xrandr --output HDMI-A-0 -s 1920x1080 -r 144 --primary
# xrandr --output HDMI-A-0 --set TearFree on
# xrandr --output eDP --off

# Let your monitor OCD handle things
# xset -dpms
# xset s off

# Lock the screen after 60 minutes of inactivity
# xautolock -time 60 -locker slock &

# Wallpaper
xwallpaper --maximize ~/image/light.png
# xwallpaper --maximize ~/image/dark.png

# Mouse
# xinput set-prop "Logitech M570" "libinput Accel Speed" -0.4

# Keyboard
setxkbmap us # Set Xorg keyboard language
# setxkbmap -option caps:none # Disable CAPSLOCK
# setxkbmap -option altwin:swap_alt_win # Swap ALT and SUPER

# Audio
pipewire &

rfkill unblock all &
sxhkd &
exec dbus-run-session dk
