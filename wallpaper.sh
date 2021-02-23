#!/bin/bash

LOCK_FILE=/tmp/wallpaper.lock
change_wallpaper() {
	if [ -f "$LOCK_FILE" ];then
		exit 0
	fi
	feh --bg-fill 'https://source.unsplash.com/random/1920x1080'
}

while true;
do 
	change_wallpaper;
	touch "$LOCK_FILE"
       	sleep 150;
	rm "$LOCK_FILE"
done
