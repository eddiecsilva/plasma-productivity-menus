#!/bin/bash

CORES=$(nproc)

# Verifica se há arquivos
if [ "$#" -eq 0 ]; then
    echo "Nenhum arquivo fornecido."
    exit 1
fi

# Converte arquivos em paralelo com saída visível
printf "%s\n" "$@" | xargs -P "$CORES" -n 1 -I {} bash -c '
    echo "🔄 Convertendo: \"$1\""
    ffmpeg -hide_banner -i "$1" -acodec libmp3lame -b:a 320k "${1%.*}-converted.mp3"
    echo "✅ Finalizado: \"${1%.*}-converted.mp3\""
' _ {}
