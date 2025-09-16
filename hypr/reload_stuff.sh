#!/bin/bash

# Reload waybar
pkill waybar
hyprctl dispatch exec waybar

#Reload mako
makoctl reload

notify-send "peenar" -A "boop" -t 5000
