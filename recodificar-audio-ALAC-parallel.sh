#!/bin/bash
if ! command -v parallel &> /dev/null; then
    echo "Erro: GNU Parallel não instalado. Instale com: sudo apt install parallel"
    exit 1
fi

parallel -k --bar -j 2 /projetos/codigos/plasma-productivity-menus/recodificar-audio-ALAC.sh {} ::: "$@"
