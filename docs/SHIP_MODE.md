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

Planned Modes
Work Mode

Purpose: focused teaching, planning, documents, grading, and school operations.

Possible future actions:

Use calmer desktop visuals
Prioritize calendar, notes, browser, and document tools
Reduce visual noise
Surface work-related widgets
Hide lounge or media-heavy elements
Lounge Mode

Purpose: music, cocktails, cooking, movies, and relaxed creative time.

Possible future actions:

Use warmer visuals
Prioritize media controls
Surface now-playing and ambient widgets
Hide work reminders
Support evening desktop layouts
Clean Mode

Purpose: reset the desktop into a quiet, minimal state.

Possible future actions:

Stop nonessential widgets
Hide overlays
Clear temporary visual clutter
Keep only core launchers and system status
Act as a safe fallback mode
Engineering Mode

Purpose: Linux work, local AI, repo work, diagnostics, and system building.

Possible future actions:

Prioritize terminal tools
Surface system health and local AI status
Show diagnostics widgets
Open project folders or logs
Prepare the desktop for development work
v0.3.0 Scope

The first Ship Mode release should include:

A documented Ship Mode plan
A new ship-mode module folder
A preview-only command design
No real desktop changes
No risky automation
No changes to Cinnamon, panels, startup apps, wallpapers, or widgets
Future Scope

Later releases may add:

Real mode switching
Mode config files
Wallpaper switching
Widget profiles
Startup profiles
Rollback support
Per-monitor layouts
Integration with Sable AI Core
Integration with Ship Doctor checks
Safety Requirements

Before Ship Mode can make real changes, it needs:

Dry-run support
Backup support
Rollback support
Clear user confirmation
No destructive default behavior
Logs of every action taken
Compatibility Notes

Ship Mode should not replace the local Sable AI Core.

