# SableOS Module Registry

This file tracks the official modules that make up SableOS.

A module is a focused part of the system that can be documented, tested, improved, and eventually installed or removed without breaking the entire environment.

## Module Status Key

| Status | Meaning |
|---|---|
| Planned | The module idea exists, but has not been added yet |
| In Progress | The module is being developed or cleaned up |
| Active | The module works on the current system |
| Experimental | The module works, but may be fragile or unfinished |
| Archived | The module is no longer part of the active system |

## Current Modules

| Module | Status | Purpose | Location |
|---|---|---|---|
| Ship Doctor | Active | System health checks, diagnostics, install support, and recovery hints | `modules/ship-doctor/` |
| Sable CLI | Active | Main command hub for SableOS | `modules/sable-cli/` |
| Ship Mode | Planned | Switch between desktop modes such as work, lounge, clean, and engineering | `modules/ship-mode/` |
| Mission Log | Planned | Quick notes, activity logging, and command-deck status updates | `modules/mission-log/` |
| Control Center | Planned | Main launcher and command interface for SableOS tools | `modules/control-center/` |
| AI Core | Planned | Local assistant layer, model configuration, and automation behavior | `modules/ai-core/` |
| Widget System | Planned | Desktop widgets for status, weather, music, tasks, and system information | `modules/widget-system/` |
| Crew Overlay | Planned | Animated desktop companion layer and visual presence system | `modules/crew-overlay/` |
| Theme Layer | Planned | Icons, cursor, terminal theme, desktop visuals, and UI styling | `modules/theme-layer/` |
| Wallpaper System | Planned | Wallpaper rotation, screen-specific backgrounds, and visual modes | `modules/wallpaper-system/` |
| Backup System | Planned | Backup creation, restore notes, and safety checkpoints | `modules/backup-system/` |

## Module Rules

Each module should eventually include:

- A `README.md` explaining what the module does
- An install or setup method, when appropriate
- A list of dependencies
- Safe defaults
- Notes about what files it changes
- Troubleshooting notes
- Screenshots or examples, when useful

## Why Modules Matter

SableOS should be modular because the system needs to stay recoverable.

If one part breaks, the whole desktop should not collapse.

Each module should be understandable on its own, but useful as part of the larger SableOS command environment.
