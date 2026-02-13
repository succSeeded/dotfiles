#!/bin/bash

mode="$(makoctl mode)" 

# Check if DND is in the mode list
if [[ $mode == *"do-not-disturb"* ]]; then
	echo "{\"text\": \"󰂛\", \"tooltip\": \"\", \"class\": \"\", \"percentage\": 100 }"
else
	echo "{\"text\": \"󰂚\", \"tooltip\": \"\", \"class\": \"\", \"percentage\": 0 }"
fi
