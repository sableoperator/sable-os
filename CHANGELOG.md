# Changelog

All notable changes to SableOS will be documented in this file.

## [v0.4.0] - 2026-06-21

### Added

* Added config-driven Ship Mode previews
* Added default `.mode` config files for `work`, `lounge`, `clean`, and `engineering`
* Added `modules/ship-mode/config/modes`
* Added Ship Mode config format documentation
* Added support for listing available modes from config files
* Added support for rendering previews from `.mode` files
* Added helpful unknown mode and missing config folder errors

### Changed

* Moved default Ship Mode preview language out of the script and into config files
* Updated Ship Mode documentation to describe default modes as templates
* Updated README and roadmap language for config-driven Ship Mode previews
* Updated version to `0.4.0`

### Safety

* Ship Mode remains preview-only
* Config actions are printed only and are not executed
* No wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, running processes, or user environment are changed

### Notes

This release prepares SableOS for future user-defined modes by making Ship Mode previews config-driven instead of hardcoded.

## [v0.3.1] - 2026-06-21

### Changed

* Generalized Ship Mode language for a broader public audience
* Updated Ship Mode descriptions to be less specific to one personal workflow
* Updated preview output language for `work`, `lounge`, `clean`, and `engineering`
* Updated version to `0.3.1`

### Safety

* No desktop behavior changes
* Ship Mode remains preview-only
* No wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, or running processes are changed

### Notes

This patch keeps the SableOS Ship Mode concept intact while making the public wording more flexible for different users and workflows.


## [v0.3.0] - 2026-06-21

### Added

* Added preview-only Ship Mode command support
* Added `modules/ship-mode/bin/ship-mode`
* Added `sableos mode list`
* Added `sableos mode current`
* Added `sableos mode preview <mode>`
* Added preview support for `work`, `lounge`, `clean`, and `engineering` modes
* Added Ship Mode to the `sableos modules` output

### Changed

* Updated `sableos` to route mode commands through the repository Ship Mode preview module
* Updated version to `0.3.0`

### Safety

* Ship Mode is preview-only in this release
* No wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, or running processes are changed

### Notes

This release establishes the public SableOS command structure for future desktop mode switching while keeping the current implementation safe and non-destructive.


## [v0.2.1] - 2026-06-21

### Changed

- Renamed the installed SableOS CLI command from `sable` to `sableos`
- Updated Sable CLI installer target to `~/.local/bin/sableos`
- Updated CLI help text to use `sableos`
- Updated command examples where needed

### Fixed

- Avoided command name collision with the existing Sable AI Core `sable` command

### Notes

This patch keeps the existing BEBOP/Sable AI Core command intact while giving the public SableOS project its own command hub through `sableos`.

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
