#!/bin/bash

ffmpeg \
  -loop 1 -i image.png \
  -i audio.wav \
  -vcodec libx264 -acodec aac \
  -ab 320k -ac 1 -ar 48000 \
  -pix_fmt yuv420p -r 30 \ # 動画のフレームレートを30 fpsに設定
  -t 6.0 \ # 動画の長さを設定
  output.mp4
