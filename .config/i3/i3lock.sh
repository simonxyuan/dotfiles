#!/bin/bash
# LOCK_PIC=$HOME/.config/i3/lock.png1
# TMP_SCREEN=/tmp/screen.png
# scrot $TMP_SCREEN
# convert $TMP_SCREEN -scale 2% -scale 5000% $TMP_SCREEN
# 
# if [[ -f $LOCK_PIC ]]
# then
#     # placement x/y
#     PX=0
#     PY=0
#     # lockscreen image info
#     R=$(file $LOCK_PIC | grep -o '[0-9]* x [0-9]*')
#     RX=$(echo $R | cut -d' ' -f 1)
#     RY=$(echo $R | cut -d' ' -f 3)
# 
#     SR=$(xrandr --query | grep ' connected' | sed 's/primary //' | cut -f3 -d' ')
#     for RES in $SR
#     do
#         # monitor position/offset
#         SRX=$(echo $RES | cut -d'x' -f 1)                   # x pos
#         SRY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 1)  # y pos
#         SROX=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 2) # x offset
#         SROY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 3) # y offset
#         PX=$(($SROX + $SRX / 2 - $RX / 2))
#         PY=$(($SROY + $SRY / 2 - $RY / 2))
# 
#         convert $TMP_SCREEN $LOCK_PIC -geometry +$PX+$PY -brightness-contrast -95 -composite -matte  $TMP_SCREEN
#         echo "done"
#     done
# fi
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
# i3lock  -I 10 -d -e -u -n -i /tmp/screen.png
# i3lock -e -u -n -i /tmp/screen.png --indpos="x+86:y+1003" --radius=15 --veriftext="" --wrongtext="" & sleep 1 && xset dpms force off
~/.config/i3lock/i3lock -e -c 000000 --radius=50 && sleep 1 && xset dpms force off
# ~/.config/i3lock/i3lock -i /tmp/screen.png -e --radius=50 && sleep 1 && xset dpms force off
