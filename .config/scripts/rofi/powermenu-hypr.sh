#! /bin/sh

chosen=$(printf "󰐥  Power off\n󰑐  Reboot\n  Hibernate\n󰗽  Log Out\n󰍁  Lock Screen\n" | rofi -dmenu -i -theme-str '@import "power.rasi"')
case "$chosen" in
	"󰐥  Power off") shutdown now ;;
	"󰑐  Reboot") reboot ;;
	"  Hibernate") systemctl hibernate ;;
	"󰗽  Log Out") hyprctl dispatch exit ;;
	"󰍁  Lock Screen") hyprlock ;; # 
	*) exit 1 ;;
esac
