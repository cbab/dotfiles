# Set cursor
xsetroot -cursor_name left_ptr

# Keyboard mapping
setxkbmap ca -variant multix

# Set wallpaper if one is present
if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

if [ -f ~/.Xresources ]; then
    xrdb ~/.Xresources
fi

exec xmonad
