# 🚀 Plasma Productivity Menus

**Service Menus** são entradas de menu contextual (botão direito) no **Dolphin** (gerenciador de arquivos do KDE Plasma) que executam ações rápidas em arquivos/pastas. São perfeitos para automatizar tarefas repetitivas sem abrir apps extras!

## 💼 Para Quem?
Criados para minha rotina profissional em **criação de conteúdo e marketing digital**:
- Vídeos: conversão áudio lossless (ALAC/PCM), proxy leve, multi-pista → single
- Áudio: FLAC, frames extraction
- **Economize horas** em batch processing!


| Arquivo                         | Tipo     | Função Principal                    |
| ------------------------------- | -------- | ----------------------------------- |
| Exportar-Frames-Focus.desktop   | .desktop | Extrair frames específicos de vídeo |
| Audio-para-PCM.desktop          | .desktop | Converter áudio para PCM raw        |
| Conversor-FLAC.desktop          | .desktop | Conversão batch FLAC (ALAC/Outros)  |
| Video-Proxy-Leve.desktop        | .desktop | Criar proxy vídeo otimizado (1080p) |
| MultiPista-para-Simples.desktop | .desktop | Multi-áudio → single track lossless |
| Converter-FLAC-para-ALAC.sh     | .sh      | Script auxiliar FLAC → ALAC         |
| Converter-MultiPista-Simples.sh | .sh      | Script multi-áudio → single         |
| Converter-PCM-S24LE.sh          | .sh      | PCM S24LE converter/otimização      |

## 🎥 Inspiração
Aprendi sobre Service Menus assistindo este vídeo excelente:

[![Service Menus KDE Plasma](https://img.youtube.com/vi/ictZRWJ-8e0/0.jpg)](https://youtu.be/ictZRWJ-8e0?si=OYD-he20ZMA8RpBI)

**"Service Menus KDE Plasma"** - Tutorial completo que mudou minha produtividade!

## 📦 Instalação Rápida
```bash
git clone https://github.com/SEU_USERNAME/plasma-productivity-menus
cp *.desktop ~/.local/share/kio/servicemenus/
kbuildsycoca6 --noincremental