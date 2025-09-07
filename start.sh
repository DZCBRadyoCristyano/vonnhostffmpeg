#!/bin/bash
ffmpeg -re -i "http://122.55.252.134:8443/live/bba5b536faeacb9b56a3239f1ee8e3b3/1.m3u8" \
-c:v libx264 -preset veryfast -b:v 2500k -maxrate 2500k -bufsize 5000k \
-s 1280x720 -r 30 -c:a aac -ar 44100 -ac 2 -b:a 128k \
-f flv "rtmp://cctn47:cctn47@36bay2.tulix.tv/giatv-cctn47/cctn47"
