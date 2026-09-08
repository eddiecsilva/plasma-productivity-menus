# 🚀 Menus de Produtividade do Plasma

> **Uma coleção independente de Service Menus para o Dolphin criada para automatizar tarefas do meu fluxo de trabalho com edição de vídeo, áudio e organização de arquivos.**

> [!IMPORTANT]
> Este **não é um projeto oficial do KDE Plasma**. São scripts pessoais disponibilizados publicamente para quem desejar utilizá-los ou adaptá-los.

![Banner](docs/banner.svg)

## Índice

- Visão geral
- Recursos
- Scripts
- Instalação
- Como usar
- Estrutura
- Dependências
- FAQ
- Licença

## Visão geral

Os Service Menus permitem executar tarefas diretamente pelo menu de contexto do Dolphin. Este projeto reúne automações usadas diariamente na produção de conteúdo.

![Demo](docs/demo.gif)

## ✨ Recursos

- Integração com o Dolphin
- Automações em Shell Script
- Conversões utilizando FFmpeg
- Organização de arquivos
- Código simples e fácil de adaptar


## 💼 Para Quem?
Criado para minha rotina profissional em **criação de conteúdo e marketing digital**:
- Vídeos: conversão de áudio sem perdas (ALAC/PCM), proxy leve, multi-trilha → única
- Áudio: FLAC, extração de quadros
- **Economize horas** em processamento em lote!

## 📂 Arquivos

- **[export-focus-frames.desktop](export-focus-frames.desktop)** - Extrai quadros específicos de vídeo. Use quando precisar de quadros úteis para análise ou edição.
- **[convert-audio-to-pcm.desktop](convert-audio-to-pcm.desktop)** - Converte áudio para PCM bruto. Ideal para sistemas de processamento de áudio que exigem formato de áudio cru.
- **[encode-audio-alac.desktop](encode-audio-alac.desktop)** - Conversão em lote de FLAC (ALAC/Outros). Útil para converter arquivos de áudio FLAC para ALAC ou outros formatos.
- **[video-proxy-lite.desktop](video-proxy-lite.desktop)** - Cria proxy de vídeo otimizado (1080p). Use para criar versões de vídeo mais leves para edição.
- **[convert-multichannel-to-stereo.desktop](convert-multichannel-to-stereo.desktop)** - Multi-áudio → trilha única de alta qualidade. Perfeito para combinar múltiplas trilhas de áudio em uma única trilha.
- **[convert-flac-to-alac.sh](convert-flac-to-alac.sh)** - Script auxiliar FLAC → ALAC. Use para automatizar a conversão de arquivos FLAC para ALAC.
- **[convert-multichannel-to-stereo.sh](convert-multichannel-to-stereo.sh)** - Script multi-áudio → trilha única. Ideal para processar múltiplas trilhas de áudio em um único arquivo.
- **[convert-pcm-s24le.sh](convert-pcm-s24le.sh)** - Conversor/otimização de PCM S24LE. Use para otimizar arquivos de áudio PCM S24LE.
- **[convert-png-to-jpeg-optimized.sh](convert-png-to-jpeg-optimized.sh)** - Converte imagens PNG em JPEGs otimizados. Ideal para criar imagens menores e mais adequadas para a web a partir de arquivos PNG.
- **[create-project-structure.desktop](create-project-structure.desktop)** - Cria uma estrutura básica de projeto com arquivos padrão (README, .gitignore, etc.). Ideal para acelerar a inicialização de novos projetos.


## 🎥 Inspiração
Aprendi sobre Service Menus assistindo a este vídeo excelente:

[![Service Menus KDE Plasma](https://img.youtube.com/vi/ictZRWJ-8e0/0.jpg)](https://youtu.be/ictZRWJ-8e0?si=OYD-he20ZMA8RpBI)

**"Service Menus KDE Plasma"** - Um tutorial completo que mudou minha produtividade!

## 📦 Instalação Rápida
```bash
 git clone https://github.com/eddiecsilva/plasma-productivity-menus
 cd plasma-productivity-menus
 cp * ~/.local/share/kio/servicemenus/
 cd ~/.local/share/kio/servicemenus/
 chmod +x *
 kbuildsycoca6 --noincremental
```

## 🛠️ Dependências
Este projeto depende do `ffmpeg` para executar ações de processamento de áudio e vídeo. Certifique-se de que o `ffmpeg` está instalado em seu sistema.

## 📝 Observações

**AVISO:** Este projeto foi desenvolvido utilizando ferramentas de código assistidas por IA, como **Opencode**, para auxiliar no desenvolvimento. Trata-se de um projeto pessoal, disponibilizado publicamente sem intenção de uso comercial.

Este projeto foi testado exclusivamente no **Debian Linux 13** com **KDE Plasma 6.3**. Pode não funcionar corretamente em outras distribuições Linux devido a diferenças na configuração do ambiente e componentes do KDE Plasma.

> **Nota:** As traduções são automáticas e podem conter erros.

Se você encontrar problemas em outras distribuições, sinta-se à vontade para abrir um problema no repositório.

## ✅ Tipos de Arquivos Finais Gerados pelos Scripts

Os seguintes scripts geram tipos específicos de arquivos com base em sua finalidade:

1. **extract-audio-pcm.sh** → `.wav` (áudio em formato PCM, 24-bit little-endian)
2. **convert-multichannel-to-stereo.sh** → `.mp4` (vídeo com áudio misturado em estéreo, codec de áudio AAC)
3. **generate-video-proxy.sh** → `.mp4` (vídeo proxy em 1080p ou resolução original, codec H.264 NVENC)
4. **remove-audio-tracks.sh** → `.mp4` (vídeo sem áudio, cópia de vídeo e legendas)
5. **export-focus-frames.sh** → `.png` (imagens sequenciais a cada 2 segundos)

Todos os arquivos gerados são contêineres com codecs comuns do FFmpeg.
