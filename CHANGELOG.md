# Changelog

All notable changes to SableOS will be documented in this file.

## [v0.2.0] - 2026-06-21

### Added

- Sable CLI module
- `sable` command hub
- `sable help`
- `sable version`
- `sable modules`
- `sable doctor`
- `sable status`
- `sable docs`
- `sable install` routing
- Sable CLI installer
- Root installer support for `sable-cli`
- `VERSION` file

### Fixed

- Fixed Ship Doctor SableOS repository detection when running from the installed command
- Restored SableOS folder and file checks for installed Ship Doctor usage

### Changed

- Updated README with Sable CLI usage examples
- Updated module registry with Sable CLI
- Improved install routing through the root installer

### Notes

This release gives SableOS its first central command interface. Future modules can now route through the `sable` command instead of existing as disconnected scripts.

## [v0.1.0] - 2026-06-21

### Added

- Initial SableOS project structure
- Project README
- MIT license
- Project charter
- Roadmap
- Module registry
- Documentation index
- System structure documentation
- Screenshot guide
- Git workflow documentation
- Install plan
- Ship Doctor module
- Ship Doctor installer
- Root SableOS installer

### Changed

- Marked Ship Doctor as the first active installable module
- Updated project status documentation

### Notes

This is the first SableOS release. It establishes the project foundation and introduces Ship Doctor as the first installable module.
