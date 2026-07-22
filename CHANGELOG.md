# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> **Warning:** Translations are automatic and may contain errors.

## [v1.1.0] - 2026-07-22

### Changed
- Renamed all `.desktop` files to use kebab-case naming convention for consistency.
- Updated all `.desktop` files to include English comments before Portuguese comments for clarity.
- Standardized script names to kebab-case for consistency and improved readability.
- Updated all `.desktop` files to use `Name[<idioma>]` for multilingual menu names, ensuring proper display in Portuguese Brazilian environments.

### Fixed
- Corrected translations in `.desktop` files to ensure accurate Portuguese Brazilian messages.
- Fixed incorrect `Name[pt]` entries in `.desktop` files to use `Name[pt_BR]`.

## [Unreleased]

## [v1.0.0] - 2026-07-22

### Added
- Initial release with core functionalities for video editing and project management.
- Added `README.md` and `README.pt.md` for bilingual documentation.
- Added `convert-multichannel-to-stereo.desktop`, `remove-audio-tracks.desktop`, `generate-video-proxy.desktop`, `extract-audio-pcm.desktop`, `create-project-structure.desktop`, and `export-focus-frames.desktop` for media processing tasks.

### Changed
- Updated all `.desktop` files to use `Name[<idioma>]` for multilingual menu names.
- Standardized all `.sh` scripts to use `konsole` for consistent execution.

### Fixed
- Resolved issues with incorrect file paths and missing dependencies.

## [v0.1.0] - 2026-07-20

### Added
- Initial setup of the project with basic `.desktop` and `.sh` scripts.
- Added `README.md` with initial project description.

### Changed
- Refactored project structure to improve organization and readability.

### Fixed
- Resolved issues with incorrect `Exec` paths in `.desktop` files.

## [v0.0.1] - 2026-07-19

### Added
- Initial commit with project structure and basic scripts.

### Changed
- Initial setup of the repository with `.gitignore` and `LICENSE`.

### Fixed
- Resolved initial issues with project setup.



