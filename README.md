# 🚀 Plasma Productivity Menus

**Service Menus** are context menu entries (right-click) in **Dolphin** (KDE Plasma file manager) that execute quick actions on files/folders. Perfect for automating repetitive tasks without opening extra apps!

## 💼 For Whom?
Created for my professional routine in **content creation and digital marketing**:
- Videos: lossless audio conversion (ALAC/PCM), lightweight proxy, multi-track → single
- Audio: FLAC, frame extraction
- **Save hours** in batch processing!

## 📂 Files

- **[export-focus-frames.desktop](export-focus-frames.desktop)** - Extract specific video frames. Use when you need frames useful for analysis or editing.
- **[convert-audio-to-pcm.desktop](convert-audio-to-pcm.desktop)** - Convert audio to PCM raw. Ideal for audio processing systems that require raw audio format.
- **[encode-audio-alac.desktop](encode-audio-alac.desktop)** - Batch FLAC conversion (ALAC/Other). Useful for converting FLAC audio files to ALAC or other formats.
- **[video-proxy-lite.desktop](video-proxy-lite.desktop)** - Create optimized video proxy (1080p). Use to create lighter video versions for editing.
- **[convert-multichannel-to-stereo.desktop](convert-multichannel-to-stereo.desktop)** - Multi-audio → single lossless track. Perfect for combining multiple audio tracks into a single track.
- **[convert-flac-to-alac.sh](convert-flac-to-alac.sh)** - Auxiliary script FLAC → ALAC. Use to automate the conversion of FLAC files to ALAC.
- **[convert-multichannel-to-stereo.sh](convert-multichannel-to-stereo.sh)** - Multi-audio → single script. Ideal for processing multiple audio tracks into a single file.
- **[convert-pcm-s24le.sh](convert-pcm-s24le.sh)** - PCM S24LE converter/optimization. Use to optimize PCM S24LE audio files.

## 🎥 Inspiration
I learned about Service Menus by watching this excellent video:

[![Service Menus KDE Plasma](https://img.youtube.com/vi/ictZRWJ-8e0/0.jpg)](https://youtu.be/ictZRWJ-8e0?si=OYD-he20ZMA8RpBI)

**"Service Menus KDE Plasma"** - A complete tutorial that changed my productivity!

## 📦 Quick Installation
```bash
 git clone https://github.com/SEU_USERNAME/plasma-productivity-menus
 cp *.desktop ~/.local/share/kio/servicemenus/
 chmod +x *.sh
 kbuildsycoca6 --noincremental
```

## 🛠️ Dependencies
This project depends on `ffmpeg` to execute audio and video processing actions. Make sure `ffmpeg` is installed on your system.
## 📝 Notas

Este projeto foi testado exclusivamente no **Debian Linux 13** com o **KDE Plasma 6.3**. Pode não funcionar corretamente em outras distribuições de Linux, devido a diferenças na configuração do ambiente e nos componentes do KDE Plasma.

> **Aviso:** As traduções são automáticas e podem conter erros.

Se você encontrar problemas em outras distribuições, sinta-se à vontade para abrir uma issue no repositório.