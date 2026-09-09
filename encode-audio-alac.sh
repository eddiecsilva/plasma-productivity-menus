#!/bin/bash

for f in "$@"; do
  ext="${f##*.}"
  echo "🔄 Recodificando áudio para ALAC: $f"
  ffmpeg -hide_banner -i "$f" -map 0 -c:v copy -c:a alac -movflags +faststart "${f%.}-alac.$ext"
  echo "✅ Finalizado: ${f%.*}-alac.$ext"
  echo
done
