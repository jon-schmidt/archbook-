#!/bin/sh
# load ~/.Xresources
    xrdb -merge ~/.Xresources

# key-repeate
    xset r rate 220 80

# keyboard maps
    setxkbmap -option caps:escape
    setxkbmap -option ctrl:swap_rwin_rctl 
    setxkbmap -option alt:swap_ralt_rwin 
    setxkbmap -option terminate:ctl_alt_bksp

# xinit
    exec i3
