#!/bin/bash

for f in "$@"; do
  ext="${f##*.}"
  echo "🔄 Recodificando vídeo para H265 (CUDA): $f"
  ffmpeg -hide_banner -hwaccel cuda -i "$f" -map 0 -c:v hevc_nvenc -preset slow -b:v 20M -maxrate 20M -bufsize 40M -color_primaries 1 -color_trc 1 -colorspace 1 -c:a aac -movflags +faststart "${f%.}-h265.$ext"
  echo "✅ Finalizado: ${f%.*}-h265.$ext"
  echo
done
