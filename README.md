# Creator Toolkit
![Banner](img/project_thumb.png)

A collection of automation scripts and service menus designed to streamline video and audio post-production workflows. This toolkit provides high-performance tools for tasks like proxy generation, audio encoding, and format conversion, integrating directly into the KDE Plasma environment.

## 🎯 Objectives

- **Simplify Workflows**: Automate repetitive and complex media processing tasks.
- **High Quality**: Provide consistent, high-quality output for professional creators.
- **Ease of Use**: Integrate seamlessly with the system through context-aware service menus.
- **Performance**: Leverage parallel processing and hardware acceleration (CUDA) for faster results.

## 🛠️ Tool Summary

- **Audio Encoding**: Batch conversion to ALAC and other formats, including parallel processing options.
- **Video Proxy**: Rapid generation of optimized 1080p proxies for smoother video editing.
- **Audio Processing**: Multi-channel to stereo conversion, PCM S24LE optimization, and audio track removal.
- **Image Optimization**: Fast conversion of PNG files to optimized JPEGs for web use.
- **Project Management**: Instant creation of standardized project structures with pre-configured files.

## 📦 Quick Installation
```bash
 git clone https://github.com/eddiecsilva/plasma-productivity-menus
 cd plasma-productivity-menus
 cp * ~/.local/share/kio/servicemenus/
 cd ~/.local/share/kio/servicemenus/
 chmod +x *
 kbuildsycoca6 --noincremental
```

## 📖 Documentation & History

- **[Portuguese (BR) Documentation](DOCS/DOCS-pt/README.pt.md)**
- **[English Documentation](DOCS/DOCS-en/README.md)**

## 📜 Changelog

- **[Portuguese (BR)](DOCS/DOCS-pt/CHANGELOG.pt.md)**
- **[English](CHANGELOG.md)**
