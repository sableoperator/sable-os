# Ship Doctor

Ship Doctor is the diagnostics and system health module for SableOS.

It checks the local workstation and reports warnings, failures, and recovery hints for the command environment.

## Purpose

Ship Doctor exists to make SableOS easier to inspect, troubleshoot, and recover.

A customized desktop can become fragile over time. Ship Doctor gives the system a basic health report so problems are easier to find before they become bigger issues.

## Current Checks

- System information
- Disk usage
- Memory availability
- Monitor detection
- Ollama/local AI availability
- JasonOS/SableOS folder structure
- Backup freshness

## Ship Status Levels

Ship Doctor ends each scan with a simple system status.

### GREEN

`SHIP STATUS: GREEN` means no warnings or failures were detected.

The system appears healthy based on the checks Ship Doctor currently knows how to run.

### YELLOW

`SHIP STATUS: YELLOW` means one or more warnings were detected, but no critical failures were found.

A yellow result usually means something should be reviewed soon, but the system is not necessarily broken.

Examples:

- Disk usage is getting high
- Expected folders are missing
- Ollama is installed but not responding
- Fewer monitors are detected than expected

### RED

`SHIP STATUS: RED` means one or more failures were detected.

A red result means Ship Doctor found something important that may affect the SableOS environment or basic system health.

Examples:

- No monitors were detected
- The main system folder is missing
- Disk usage is critically high

## Warning and Failure Counts

At the end of a scan, Ship Doctor prints warning and failure totals.

Warnings are non-critical problems that should be reviewed.

Failures are serious problems that may require immediate attention.

The current exit behavior is:

| Status | Meaning | Exit Code |
|---|---|---|
| GREEN | No warnings or failures | `0` |
| YELLOW | Warnings found, no failures | `1` |
| RED | One or more failures found | `2` |

## Install

From the SableOS repo:

```bash
./modules/ship-doctor/install.sh --dry-run
./modules/ship-doctor/install.sh

## Run

From the SableOS repo:

```bash
./modules/ship-doctor/bin/ship-doctor
```

## Planned Improvements

- Add cleaner status output
- Add repair suggestions
- Add JSON output mode
- Add SableOS folder checks
- Add local AI model checks
- Add desktop widget/service checks
- Add backup age warnings
- Add screenshot examples

## Status

In progress.
