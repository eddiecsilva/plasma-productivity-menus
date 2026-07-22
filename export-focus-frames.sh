#!/bin/bash

for file in "$@"; do
    dir="$(dirname "$file")"
    base="$(basename "$file")"
    name="${base%.*}"
    outdir="$dir/exports"

    
    mkdir -p "$outdir"

    
    echo "Arquivo: $file"
    echo "Exportando 1 frame a cada 2 segundos"
    echo "Saída: $outdir"
    echo

    ffmpeg -hide_banner \
        -stats \
        -i "$file" \
        -vf "fps=1/2,format=rgb24" \
        -vsync vfr \
        -compression_level 6 \
        "$outdir/${name}_frame_%06d.png"\

    
    echo
    echo "Finalizado: $file"
    echo "---------------------------------------------"

done

echo
echo "Processamento concluído."
echo "Você pode fechar esta janela."