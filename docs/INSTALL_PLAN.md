# SableOS Install Plan

This document outlines how SableOS modules should eventually be installed, enabled, backed up, and removed safely.

SableOS is built from a real workstation environment, so installers must be careful, predictable, and reversible.

## Goals

The install system should make SableOS easier to:

- install in pieces
- rebuild after a system failure
- test safely before making changes
- back up existing files before overwriting anything
- understand what each module changes
- remove or disable modules when needed

## Core Rule

SableOS installers should never blindly overwrite user files.

Before changing anything, an installer should explain what it will do.

## Install Modes

### Dry Run

Dry run mode should show what would happen without changing the system.

Example:

```bash
./install.sh --dry-run
