#!/bin/bash

ffmpeg -y \
-hwaccel auto \
-i ecamera.hevc \
-hwaccel auto \
-i fcamera.hevc \
-filter_complex "[1:v]scale=iw/2:ih/2[front];[0:v][front]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" \
-t 10 \
-c:v h264_videotoolbox \
-b:v 10000k \
out.mp4