#!/bin/bash

# Verifica se há um diretório fornecido
if [ "$#" -eq 0 ]; then
    echo "Nenhum diretório fornecido."
    exit 1
fi

TARGET_DIR="$1"

# Cria as pastas
for dir in "a-roll" "b-roll" "img" "thumb" "extras"; do
    mkdir -p "$TARGET_DIR/$dir"
    echo "📁 Criada: $TARGET_DIR/$dir"
done
