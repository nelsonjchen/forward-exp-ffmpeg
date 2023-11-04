#!/bin/bash

ffmpeg -y \
-hwaccel auto \
-i ecamera.hevc \
-c:v h264_videotoolbox \
out.mp4