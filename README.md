# SableOS

SableOS is a cinematic Linux command environment for local AI, automation, terminal-first workflows, and creative production.

It is built around the idea of turning a personal Linux workstation into a focused command-deck system: useful diagnostics, custom desktop tools, local AI agents, workflow automation, and visual layers that support real work.

## What SableOS Is

SableOS is not a standalone Linux distribution yet.

Right now, it is a curated desktop environment and automation layer built on top of Linux Mint/Cinnamon. It combines scripts, widgets, local AI tools, desktop customization, diagnostics, and documentation into one organized system.

## Core Ideas

- Local-first AI tools
- Terminal-first control workflows
- Modular scripts and utilities
- Cinematic command-deck desktop design
- Practical diagnostics and recovery tools
- Creative production and fabrication workflow support
- A system that is personal, but clean enough to rebuild and share

## Documentation

Project documentation is available in the [`docs/`](docs/) folder.

Start here:

- [Documentation Index](docs/README.md)
- [Project Charter](docs/PROJECT_CHARTER.md)
- [Roadmap](docs/ROADMAP.md)
- [Module Registry](docs/MODULES.md)
- [Ship Mode](docs/SHIP_MODE.md)
- [System Structure](docs/SYSTEM_STRUCTURE.md)
- [Screenshot Guide](docs/SCREENSHOTS.md)

## Concept Previews

These images show the visual direction for SableOS. They are concept previews, not final UI screenshots.

SableOS is still being built as a terminal-first command environment. Concept previews are included to communicate the intended feel and direction without implying that every visual feature is implemented yet.

Suggested concepts:

* SableOS Command Hub
* Ship Mode Preview
* Config-Driven Modes
* Future Desktop Mode Switching

Concept image files are not included yet. They will be added later under [`screenshots/concepts`](screenshots/concepts/) when public-safe preview images are ready.

## Install

SableOS is currently installed module by module.

List available modules:

```bash
./install.sh list
```

Install Sable CLI:

```bash
./install.sh sable-cli --dry-run
./install.sh sable-cli --yes
```

## Sable CLI examples

```bash
sableos help
sableos modules
sableos doctor
sableos mode list
sableos mode preview engineering
sableos install ship-doctor --dry-run
```

## Ship Mode previews

Ship Mode is currently preview-only and config-driven. Default mode templates live in:

```text
modules/ship-mode/config/modes
```

Preview a mode without changing the desktop:

```bash
sableos mode preview work
```

No real desktop changes happen yet. Ship Mode does not change wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, running processes, or user environment.

## Current Modules

Planned and in-progress modules include:

- Sable CLI: main command hub for SableOS
- Ship Doctor: system health and diagnostics
- Ship Mode: config-driven preview templates for desktop modes
- Mission Log: quick notes and activity tracking
- AI Core: local assistant and automation layer
- Control Center: launcher and command interface
- Crew Overlay: animated desktop companion layer
- Widget System: desktop status and utility widgets

## Project Goals

The goal of SableOS is to make a customized Linux workstation easier to understand, rebuild, back up, restore, and extend.

Instead of being one messy folder of scripts and experiments, SableOS is being organized into a documented, modular system.

## Status

Early development.

SableOS currently includes installable Ship Doctor and Sable CLI modules, plus preview-only Ship Mode templates.

Ship Doctor provides local system diagnostics and can be installed through the root SableOS installer. Sable CLI provides the `sableos` command hub for module discovery, diagnostics, installer routing, docs lookup, version reporting, and Ship Mode previews.

This repository is the clean public-facing version of the system. Private configs, secrets, backups, logs, and machine-specific files are intentionally excluded.
