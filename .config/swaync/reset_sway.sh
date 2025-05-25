#!/usr/bin/bash

swaync-client -C
swaync-client -rs
swaync-client -R

notify-send "peenar" -A "boop" -t 5000
