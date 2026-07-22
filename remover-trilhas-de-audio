#!/bin/bash
for f in "$@"; do
  dir_sem_audio="sem-audio"
  mkdir -p "$dir_sem_audio"  # Cria pasta se não existir


  base_name=$(basename "$f")
  output="$dir_sem_audio/${base_name%.*}-sem-audio.${base_name##*.}"


  echo "🔇 Removendo áudio de: $f"
  echo "📁 Salvando em: $output"


  ffmpeg -hide_banner -y -i "$f" \
    -an \
    -c:v copy \
    -c:s copy \
    -map_metadata 0 \
    -movflags +faststart \
    "$output" &&


  ffprobe -hide_banner -show_streams -show_format "$output" > /dev/null 2>&1 &&
  echo "✅ FINALIZADO: $output" ||
  echo "❌ ERRO na operação"
  echo
done


echo "🎬 Todos arquivos salvos em ./sem-audio/"
echo "Listando resultados:"; ls -lh sem-audio/ || true