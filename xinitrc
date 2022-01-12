#xrandr -s 1280x800
#slstatus &
feh --bg-fill ~/Pictures/bliss_cat.jpg
xrdb ~/.Xresources &
unclutter -idle 3 &

#exec twm > ~/.twm.log
exec dwm > ~/.dwm.log
