# 🚀 Plasma Productivity Menus

**Service Menus** são entradas de menu contextual (botão direito) no **Dolphin** (gerenciador de arquivos do KDE Plasma) que executam ações rápidas em arquivos/pastas. São perfeitos para automatizar tarefas repetitivas sem abrir apps extras!

## 💼 Para Quem?
Criados para minha rotina profissional em **criação de conteúdo e marketing digital**:
- Vídeos: conversão áudio lossless (ALAC/PCM), proxy leve, multi-pista → single
- Áudio: FLAC, frames extraction
- **Economize horas** em batch processing!

## 📂 Arquivos

- **[export-focus-frames.desktop](export-focus-frames.desktop)** - Extrair frames específicos de vídeo. Use quando precisar de frames úteis para análise ou edição.
- **[convert-audio-to-pcm.desktop](convert-audio-to-pcm.desktop)** - Converter áudio para PCM raw. Ideal para processamento de áudio em sistemas que exigem formato de áudio puro.
- **[encode-audio-alac.desktop](encode-audio-alac.desktop)** - Conversão batch FLAC (ALAC/Outros). Útil para converter arquivos de áudio FLAC para ALAC ou outros formatos.
- **[video-proxy-lite.desktop](video-proxy-lite.desktop)** - Criar proxy vídeo otimizado (1080p). Use para criar versões de vídeo mais leves para edição.
- **[convert-multichannel-to-stereo.desktop](convert-multichannel-to-stereo.desktop)** - Multi-áudio → single track lossless. Perfeito para combinar múltiplas pistas de áudio em uma única pista.
- **[convert-flac-to-alac.sh](convert-flac-to-alac.sh)** - Script auxiliar FLAC → ALAC. Use para automatizar a conversão de arquivos FLAC para ALAC.
- **[convert-multichannel-to-stereo.sh](convert-multichannel-to-stereo.sh)** - Script multi-áudio → single. Ideal para processar múltiplas pistas de áudio em um único arquivo.
- **[convert-pcm-s24le.sh](convert-pcm-s24le.sh)** - PCM S24LE converter/otimização. Use para otimizar arquivos de áudio em formato PCM S24LE.

## 🎥 Inspiração
Aprendi sobre Service Menus assistindo este vídeo excelente:

[![Service Menus KDE Plasma](https://img.youtube.com/vi/ictZRWJ-8e0/0.jpg)](https://youtu.be/ictZRWJ-8e0?si=OYD-he20ZMA8RpBI)

**"Service Menus KDE Plasma"** - Tutorial completo que mudou minha produtividade!

## 📦 Instalação Rápida
```bash
 git clone https://github.com/SEU_USERNAME/plasma-productivity-menus
 cp *.desktop ~/.local/share/kio/servicemenus/
 kbuildsycoca6 --noincremental
```

## 🛠️ Dependências
Este projeto depende do `ffmpeg` para executar as ações de processamento de áudio e vídeo. Certifique-se de que o `ffmpeg` está instalado em seu sistema.
## 📝 Notas

Este projeto foi testado exclusivamente no **Debian Linux 13** com o **KDE Plasma 6.3**. Pode não funcionar corretamente em outras distribuições de Linux, devido a diferenças na configuração do ambiente e nos componentes do KDE Plasma.

> **Aviso:** As traduções são automáticas e podem conter erros.

Se você encontrar problemas em outras distribuições, sinta-se à vontade para abrir uma issue no repositório.