# Monitor
# xrandr --output HDMI-1 -s 1920x1080 -r 144 --primary
# xrandr --output HDMI-1 --set TearFree on
# xrandr --output eDP-1 --off

# Let the monitor OCD settings handle screen turn off
xset -dpms
xset s off

# Lock the screen after 20 minutes of inactivity
xautolock -time 20 -locker slock &

# Wallpaper
xwallpaper --maximize ~/image/light.png

# Keyboard
# setxkbmap us # Set X keyboard
# setxkbmap -option caps:none # Disable CAPSLOCK

# Mouse
# xinput --set-prop "Name" "libinput Scrolling Pixel Distance" 5

# Audio
pipewire &

rfkill unblock all &
sxhkd &
exec dbus-run-session dk
