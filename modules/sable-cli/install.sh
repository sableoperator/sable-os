#!/usr/bin/env bash
set -euo pipefail

MODULE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SCRIPT="$MODULE_DIR/bin/sableos"

INSTALL_DIR="$HOME/.local/bin"
TARGET_SCRIPT="$INSTALL_DIR/sableos"

BACKUP_ROOT="$HOME/SableOS_Backups"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="$BACKUP_ROOT/sable-cli-$TIMESTAMP"

DRY_RUN=0
YES=0

usage() {
  cat <<'USAGE'
Sable CLI Installer

Usage:
  ./install.sh [options]

Options:
  --dry-run     Show planned actions without changing anything
  --yes         Install without asking for confirmation
  --help        Show this help message

Installs:
  sableos -> ~/.local/bin/sableos
USAGE
}

log() {
  echo "[sable-cli installer] $1"
}

planned() {
  echo "  - $1"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    --yes)
      YES=1
      shift
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
done

log "Preparing Sable CLI install."
echo

if [[ ! -f "$SOURCE_SCRIPT" ]]; then
  echo "ERROR: Source script not found:"
  echo "  $SOURCE_SCRIPT"
  echo
  echo "Expected the SableOS CLI source command to exist at:"
  echo "  modules/sable-cli/bin/sableos"
  exit 1
fi

if [[ ! -x "$SOURCE_SCRIPT" ]]; then
  planned "Make source command executable: $SOURCE_SCRIPT"
fi

echo "Planned actions:"
planned "Create install directory if needed: $INSTALL_DIR"
planned "Copy Sable CLI script to: $TARGET_SCRIPT"
planned "Make installed command executable"

if [[ -f "$TARGET_SCRIPT" ]]; then
  planned "Back up existing installed command to: $BACKUP_DIR"
fi

echo

if [[ "$DRY_RUN" -eq 1 ]]; then
  log "Dry run complete. No changes were made."

  if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo
    echo "WARNING: $INSTALL_DIR is not currently in your PATH."
    echo
    echo "Add this line to your shell config if the command is not found:"
    echo
    echo 'export PATH="$HOME/.local/bin:$PATH"'
  fi

  exit 0
fi

if [[ "$YES" -ne 1 ]]; then
  read -r -p "Continue with install? [y/N] " response
  case "$response" in
    y|Y|yes|YES)
      ;;
    *)
      log "Install cancelled."
      exit 0
      ;;
  esac
fi

mkdir -p "$INSTALL_DIR"

if [[ -f "$TARGET_SCRIPT" ]]; then
  mkdir -p "$BACKUP_DIR"
  cp "$TARGET_SCRIPT" "$BACKUP_DIR/sableos"
  log "Existing command backed up to: $BACKUP_DIR/sableos"
fi

chmod +x "$SOURCE_SCRIPT"
cp "$SOURCE_SCRIPT" "$TARGET_SCRIPT"
chmod +x "$TARGET_SCRIPT"

log "Installed Sable CLI to: $TARGET_SCRIPT"

echo

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo "WARNING: $INSTALL_DIR is not currently in your PATH."
  echo
  echo "Add this line to your shell config if the command is not found:"
  echo
  echo 'export PATH="$HOME/.local/bin:$PATH"'
  echo
fi

echo "Test it with:"
echo "  sableos help"
