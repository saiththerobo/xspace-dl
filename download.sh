#!/bin/bash

# Check if both arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./dl.sh <date> <url>"
    exit 1
fi

DATE=$1
URL=$2

# --ext mp4: Forces the final file to have .mp4 extension
# -o: Sets the filename directly

yt-dlp \
    -f 'ba' \
    --remux-video mp4 \
    -o "${DATE} - %(title)s - %(id)s.%(ext)s" \
    --postprocessor-args "ffmpeg:-c copy" \
    "$URL"
