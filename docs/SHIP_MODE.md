# Ship Mode

Ship Mode is the preview-only desktop mode planner for SableOS.

It lists and previews mode templates such as work, lounge, clean, and engineering without changing the desktop. The current implementation is config-driven: default mode descriptions live in plain-text `.mode` files instead of being hardcoded in the script.

## Safety Principle

Ship Mode must be safe before it is powerful.

The current version is preview-only. It only reads mode config files and prints what a future mode could do.

It does **not** change:

- Wallpapers
- Widgets
- Startup apps
- Cinnamon settings
- Panels
- Windows
- Displays
- Running processes
- User environment

Config actions are never executed. They are printed as preview text only.

## Commands

```bash
ship-mode help
ship-mode version
ship-mode list
ship-mode current
ship-mode preview work
ship-mode preview lounge
ship-mode preview clean
ship-mode preview engineering
```

Through Sable CLI:

```bash
sableos mode list
sableos mode current
sableos mode preview work
sableos mode preview lounge
sableos mode preview clean
sableos mode preview engineering
```

`ship-mode current` reports `unknown` because live desktop state tracking is not implemented yet.

## Config-driven default modes

Default modes are templates. They describe possible future desktop states in public, user-neutral language.

Config files live in:

```text
modules/ship-mode/config/modes
```

Current default templates:

| Mode | Purpose |
|---|---|
| `work` | Focused productivity mode for deep work, planning, writing, communication, and task management. |
| `lounge` | Relaxed mode for media, browsing, ambient use, personal time, and low-pressure creative work. |
| `clean` | Minimal reset mode designed to reduce visual clutter and return the desktop to a quiet baseline. |
| `engineering` | Technical mode for development, diagnostics, system tools, local services, logs, and build workflows. |

## Config format

Each mode uses a simple `.mode` text file with top-level fields and an action list:

```text
name: work
summary: Focused productivity mode for deep work, planning, writing, communication, and task management.

actions:
* Reduce distractions
* Prioritize active tasks and planning tools
* Surface useful communication or calendar context
```

See [`modules/ship-mode/docs/CONFIG_FORMAT.md`](../modules/ship-mode/docs/CONFIG_FORMAT.md) for details.

## Future direction

Future versions may add user override paths for local custom templates. Those overrides should remain separate from the public defaults and should preserve the same safety model until real switching is intentionally designed and reviewed.

Real desktop switching is not implemented yet.
