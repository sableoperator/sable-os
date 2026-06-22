# Sable CLI

Sable CLI is the first command hub for SableOS. It provides one small `sable` entrypoint for diagnostics, module discovery, installer routing, docs lookup, and version reporting.

## Purpose

The MVP keeps SableOS terminal-first and modular by giving users a predictable command surface without rewriting existing modules.

## Commands

```bash
sableos help
sableos version
sableos modules
sableos doctor
sableos status
sableos install list
sableos install ship-doctor [options]
sableos install sable-cli [options]
sableos docs
```

### Command behavior

- `sableos help` shows usage and available commands.
- `sableos version` reads `VERSION` from the repo root when present, otherwise prints `SableOS version unknown`.
- `sableos modules` lists the current MVP modules: `ship-doctor` and `sable-cli`.
- `sableos doctor` runs installed `ship-doctor` if available, otherwise runs `modules/ship-doctor/bin/ship-doctor` from the repo.
- `sableos status` is an alias for `sableos doctor`.
- `sableos install list` routes to `./install.sh list`.
- `sableos install ship-doctor [options]` routes to `./install.sh ship-doctor [options]`.
- `sableos install sable-cli [options]` routes to `./install.sh sable-cli [options]`.
- `sableos docs` prints local and GitHub docs paths.

## Install instructions

From the repository root:

```bash
./install.sh sable-cli --dry-run
./install.sh sable-cli --yes
```

Or from this module directory:

```bash
./modules/sable-cli/install.sh --dry-run
./modules/sable-cli/install.sh --yes
```

The installer copies:

```text
modules/sable-cli/bin/sable -> ~/.local/bin/sable
```

If an existing `~/.local/bin/sable` is present, it is backed up to:

```text
~/SableOS_Backups/sable-cli-TIMESTAMP/
```

## Safety notes

- No sudo is required.
- The installer creates `~/.local/bin` if needed.
- The installer warns if `~/.local/bin` is not in `PATH`.
- Existing installed `sable` commands are backed up before replacement.
- `--dry-run` shows planned actions without changing files.
- `--yes` skips the interactive confirmation prompt.

## Roadmap

- Add richer module metadata from a registry file.
- Add command aliases for future SableOS modules.
- Add machine-readable output for status and module commands.
- Add shell completion once the command surface stabilizes.
- Add deeper docs discovery for module-specific documentation.
