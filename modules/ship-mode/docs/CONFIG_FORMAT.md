# Ship Mode config format

Ship Mode uses simple `.mode` files for preview templates.

Config files live in:

```text
modules/ship-mode/config/modes
```

Each file name becomes the mode command name:

```text
work.mode        -> ship-mode preview work
lounge.mode      -> ship-mode preview lounge
clean.mode       -> ship-mode preview clean
engineering.mode -> ship-mode preview engineering
```

## Format

A `.mode` file is plain text with two required fields and one action section:

```text
name: work
summary: Focused productivity mode for deep work, planning, writing, communication, and task management.

actions:
* Reduce distractions
* Prioritize active tasks and planning tools
* Surface useful communication or calendar context
```

## Fields

- `name`: short mode name. This should normally match the file name without `.mode`.
- `summary`: one-line public description of the template.
- `actions`: preview-only bullet list. Bullets can start with `*` or `-`.

## Safety rules

The action list is descriptive text only.

Ship Mode does not execute actions from config files and does not change wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, running processes, or user environment.

## Future user overrides

Future versions may support user override paths for local custom templates. Public defaults should remain generic templates, and local overrides should stay outside the public repo.
