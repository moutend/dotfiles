#!/bin/bash

ffmpeg -loop 1 -r 30000/1001 -i image.png -i audio.wav -vcodec libx264 -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 -pix_fmt yuv420p -shortest output.mp4
