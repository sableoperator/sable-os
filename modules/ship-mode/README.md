# Ship Mode

Ship Mode is the SableOS preview-only desktop mode planner.

It reads default mode templates from config files and prints previews. It does not perform real desktop switching.

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
```

## Default mode templates

Default mode configs live in:

```text
modules/ship-mode/config/modes
```

Included templates:

- `work`
- `lounge`
- `clean`
- `engineering`

These are templates, not active workflows. They use public, user-neutral descriptions so they can be adapted by anyone using SableOS.

## Safety notes

Ship Mode remains preview-only.

It does not change wallpapers, widgets, startup apps, Cinnamon settings, panels, windows, displays, running processes, or the user environment.

The `.mode` files contain action descriptions for previews only. The script reads and prints those actions; it does not execute them.

## Config format

See [`docs/CONFIG_FORMAT.md`](docs/CONFIG_FORMAT.md) for the `.mode` format and an example.

## Future roadmap

Future versions may add user override paths for local mode templates. Real desktop switching should only be added after explicit design, safety review, and tests.
