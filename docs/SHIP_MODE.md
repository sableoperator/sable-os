# Ship Mode

Ship Mode is the planned desktop mode system for SableOS.

The goal is to let the user preview and eventually switch between different desktop operating states without manually changing wallpapers, widgets, layouts, launchers, or startup behavior.

This module is planned for SableOS v0.3.0.

## Design Principle

Ship Mode must be safe before it is powerful.

The first version should be preview-only. It should describe what would happen without changing the desktop.

No wallpaper changes, widget changes, autostart changes, display changes, or process killing should happen in the first planning release.

## Planned Command Shape

```bash
sableos mode list
sableos mode current
sableos mode preview work
sableos mode preview lounge
sableos mode preview clean
sableos mode preview engineering

## Planned Modes

### Work Mode

Purpose: focused productivity, planning, communication, writing, task management, and deep work.

Possible future actions:

- Reduce distractions
- Prioritize active tasks and planning tools
- Surface useful communication or calendar context
- Organize windows for focused work
- Hide nonessential visual noise

### Lounge Mode

Purpose: relaxed desktop use, media, browsing, ambient use, personal time, and low-pressure creative work.

Possible future actions:

- Use warmer or calmer visuals
- Prioritize media, browsing, or ambient tools
- Surface personal or creative widgets
- Reduce work-focused reminders
- Support casual desktop layouts

### Clean Mode

Purpose: reset the desktop into a quiet, minimal baseline.

Possible future actions:

- Hide nonessential overlays
- Stop optional widgets
- Reduce visual clutter
- Keep only core launchers and system status
- Act as a safe fallback mode

### Engineering Mode

Purpose: technical work, development, diagnostics, system tools, local services, logs, and build workflows.

Possible future actions:

- Prioritize terminal and development tools
- Surface diagnostics and system health
- Show logs or local service status
- Open project folders or build contexts
- Prepare the desktop for troubleshooting or development workflows
