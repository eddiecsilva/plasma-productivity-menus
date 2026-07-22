#!/bin/bash


CORES=$(nproc)

# Verifica se há arquivos
if [ "$#" -eq 0 ]; then
    echo "Nenhum arquivo fornecido."
    exit 1
fi


# Converte arquivos em paralelo com saída visível
printf "%s\n" "$@" | xargs -P "$CORES" -n 1 -I {} bash -c \
    \'echo "\x22Convers\x22"; ffmpeg -hide_banner -i "\x22$1\x22" -c:a pcm_s24le "${1%.*}-converted.wav"; echo "\x22Finalizado: ${1%.*}-converted.wav\x22"\x27 _ {}\n
