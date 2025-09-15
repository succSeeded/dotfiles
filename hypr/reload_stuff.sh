#!/bin/bash

# Reload waybar
pkill waybar
hyprctl dispatch exec waybar

#Reload swaync
swaync-client -C
swaync-client -rs
swaync-client -R

notify-send "peenar" -A "boop" -t 5000
