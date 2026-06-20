# SableOS Project Charter

## Mission

SableOS exists to turn a personal Linux workstation into a cinematic, local-first command environment for creative work, teaching, fabrication, automation, and AI-assisted workflows.

It is built around the idea that a computer can feel personal, expressive, and atmospheric while still being practical, repairable, and useful.

## What SableOS Is

SableOS is currently a custom Linux desktop environment and workflow system built on top of Linux Mint/Cinnamon.

It is not yet a standalone Linux distribution.

## Design Principles

### 1. Local First

SableOS should prioritize tools that run locally whenever possible.

Local AI, local scripts, local automation, local backups, and local control are preferred over cloud dependencies.

### 2. Modular

Each major feature should live as its own module, script, or documented component.

The system should not depend on one giant fragile script.

### 3. Useful Before Pretty

SableOS can look cinematic, but every visual layer should support a real workflow, improve focus, or make the system easier to understand.

Aesthetic design should serve function.

### 4. Recoverable

The system should be easy to back up, restore, diagnose, and rebuild.

A broken desktop should not mean starting from zero.

### 5. Personal but Shareable

SableOS is built from one real workstation, but the public project should be clean enough for others to study, adapt, and eventually install in pieces.

Private configs, secrets, logs, backups, and machine-specific files should stay out of the public repo.

### 6. Terminal-Friendly

SableOS should respect the terminal as a control surface.

Important tools should be scriptable, inspectable, and usable without relying only on graphical menus.

## Current Foundation

- Linux Mint Cinnamon
- Bash scripts
- Python tools
- Kitty terminal
- Ollama/local AI
- Desktop widgets
- Custom launchers
- Multi-monitor command-deck layout
- Local backup and diagnostics workflows

## Long-Term Vision

SableOS should become a documented custom Linux environment that can be installed piece by piece, restored after a system failure, and extended through modules.

The long-term goal is not just to make a cool desktop.

The goal is to build a personal operating environment that is understandable, repairable, cinematic, and useful.
