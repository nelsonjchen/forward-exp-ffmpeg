#!/bin/bash

ffmpeg -y \
-hwaccel auto \
-i ecamera.hevc \
-hwaccel auto \
-i fcamera.hevc \
-filter_complex "[1:v]scale=iw/4.5:ih/4.5,format=yuva420p,colorchannelmixer=aa=1[front];[0:v][front]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" \
-t 10 \
-c:v h264_videotoolbox \
-b:v 10000k \
out.mp4