#!/usr/bin/env bash

in="$1"

# Gera nome de saída no mesmo diretório
base="${in%.*}"
out="${base}_mixed.mp4"

# Conta quantas trilhas de áudio o arquivo tem
n_audio=$(ffprobe -v error -select_streams a \
  -show_entries stream=index -of csv=p=0 "$in" | wc -l)

# Se não houver múltiplas trilhas, apenas informa e sai
if [ "$n_audio" -le 1 ]; then
  kdialog --title "FFmpeg – Mixagem de Áudio" \
          --msgbox "O arquivo selecionado possui apenas $n_audio trilha(s) de áudio.\nNada a ser feito."
  exit 0
fi

# Processamento normal quando há múltiplas trilhas
ffmpeg -i "$in" \
  -filter_complex "amix=inputs=$n_audio:normalize=1,loudnorm=I=-16:TP=-1.5:LRA=11[aout]" \
  -map 0:v -map "[aout]" \
  -c:v copy -c:a aac -b:a 192k \
  "$out"

kdialog --title "FFmpeg – Mixagem concluída" \
        --msgbox "Arquivo gerado com sucesso:\n$out"
