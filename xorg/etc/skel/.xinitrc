# Monitor
# xrandr --output HDMI-A-0 -s 1920x1080 -r 144 --primary
# xrandr --output HDMI-A-0 --set TearFree on
# xrandr --output eDP --off

# Let the monitor OCD settings handle screen turn off
# xset -dpms
# xset s off

# Lock the screen after 20 minutes of inactivity
# xautolock -time 20 -locker slock &

# Wallpaper
# xwallpaper --maximize ~/image/dark.png
xwallpaper --maximize ~/image/light.png

# Keyboard
# setxkbmap us # Set Xorg keyboard language
# setxkbmap -option caps:none # Disable CAPSLOCK

# Mouse
# xinput --set-prop "Name" "libinput Scrolling Pixel Distance" 5

# Audio
pipewire &

rfkill unblock all &
sxhkd &
exec dbus-run-session dk
