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
