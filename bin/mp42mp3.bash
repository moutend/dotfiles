#!/bin/bash

find . -type f -name "*.mp4" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.mp4}.mp3";' _ '{}' \;
