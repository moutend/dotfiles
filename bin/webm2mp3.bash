#!/bin/bash

find . -type f -name "*.webm" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.webm}.mp3";' _ '{}' \;
