#!/bin/bash

# Verifica se o ffmpeg e ffprobe estão instalados
if ! command -v ffmpeg &> /dev/null || ! command -v ffprobe &> /dev/null; then
    echo "ffmpeg ou ffprobe não encontrados. Por favor, instale o ffmpeg para continuar."
    exit 1
fi


# Loop através de cada arquivo passado como argumento
for f in "$@"; do
    dir="$(dirname "$f")"
    base="$(basename "$f")"
    name="${base%.*}"
    ext="${base##*.}"


    # Cria o diretório para os proxies se ele não existir
    mkdir -p "$dir/proxy"


    echo "🔄 Verificando resolução do vídeo: $base"
    resolution=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of default=noprint_wrappers=1:nokey=1 "$f")
    width=$(echo "$resolution" | head -n 1)
    height=$(echo "$resolution" | tail -n 1)


    if [ "$width" -ge 3840 ] || [ "$height" -ge 2160 ]; then
        # Gerar proxy em 1080p para vídeos 4K ou maior
        echo "🔄 Gerando proxy leve (1080p): $base"
        ffmpeg -hide_banner -hwaccel cuda -i "$f" -vf scale=1920:1080 -c:v h264_nvenc -preset fast -cq 28 -c:a alac -movflags +faststart "$dir/proxy/${name}-proxy.$ext"
    else
        # Gerar proxy em resolução original para vídeos menores que 4K
        echo "🔄 Gerando proxy leve (resolução original): $base"
        ffmpeg -hide_banner -hwaccel cuda -i "$f" -c:v h264_nvenc -preset fast -cq 28 -c:a alac -movflags +faststart "$dir/proxy/${name}-proxy.$ext"
    fi


    echo "✅ Proxy gerado: proxy/${name}-proxy.$ext"
    echo

done

echo "Todos os proxies foram gerados com sucesso."