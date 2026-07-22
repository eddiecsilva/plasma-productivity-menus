# 🚀 Plasma Productivity Menus

**Service Menus** são entradas de menu contextual (botão direito) no **Dolphin** (gerenciador de arquivos do KDE Plasma) que executam ações rápidas em arquivos/pastas. São perfeitos para automatizar tarefas repetitivas sem abrir apps extras!

## 💼 Para Quem?
Criados para minha rotina profissional em **criação de conteúdo e marketing digital**:
- Vídeos: conversão áudio lossless (ALAC/PCM), proxy leve, multi-pista → single
- Áudio: FLAC, frames extraction
- **Economize horas** em batch processing!


| Arquivo                         | Tipo     | Função Principal                    |
| ------------------------------- | -------- | ----------------------------------- |
| export-focus-frames.desktop     | .desktop | Extrair frames específicos de vídeo |
| convert-audio-to-pcm.desktop    | .desktop | Converter áudio para PCM raw        |
| encode-audio-alac.desktop       | .desktop | Conversão batch FLAC (ALAC/Outros)  |
| video-proxy-lite.desktop        | .desktop | Criar proxy vídeo otimizado (1080p) |
| convert-multichannel-to-stereo.desktop | .desktop | Multi-áudio → single track lossless |
| convert-flac-to-alac.sh         | .sh      | Script auxiliar FLAC → ALAC         |
| convert-multichannel-to-stereo.sh | .sh    | Script multi-áudio → single         |
| convert-pcm-s24le.sh            | .sh      | PCM S24LE converter/otimização      |

## 🎥 Inspiração
Aprendi sobre Service Menus assistindo este vídeo excelente:

[![Service Menus KDE Plasma](https://img.youtube.com/vi/ictZRWJ-8e0/0.jpg)](https://youtu.be/ictZRWJ-8e0?si=OYD-he20ZMA8RpBI)

**"Service Menus KDE Plasma"** - Tutorial completo que mudou minha produtividade!

## 📦 Instalação Rápida
```bash
git clone https://github.com/SEU_USERNAME/plasma-productivity-menus
cp *.desktop ~/.local/share/kio/servicemenus/
kbuildsycoca6 --noincremental