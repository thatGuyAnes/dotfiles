#!/bin/bash

## merge .Xresources
xrdb -merge ~/.Xresources

## Launch picom
picom -CGb &

## Polkit authentication
# /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

## Launch nitrogen
nitrogen --restore &

## Set EN keyboard
setxkbmap -layout us


