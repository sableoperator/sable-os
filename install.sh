#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

COMMAND=""
DRY_RUN=0
YES=0

usage() {
  cat <<'USAGE'
SableOS Installer

Usage:
  ./install.sh list
  ./install.sh ship-doctor [options]

Options:
  --dry-run     Show planned actions without changing anything
  --yes         Run without asking for confirmation
  --help        Show this help message

Examples:
  ./install.sh list
  ./install.sh ship-doctor --dry-run
  ./install.sh ship-doctor --yes
USAGE
}

list_modules() {
  echo "Available SableOS modules:"
  echo "  ship-doctor    System health checks and diagnostics"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    list)
      COMMAND="list"
      shift
      ;;
    ship-doctor)
      COMMAND="ship-doctor"
      shift
      ;;
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
      echo "Unknown option or module: $1"
      echo
      usage
      exit 1
      ;;
  esac
done

if [[ -z "$COMMAND" ]]; then
  usage
  exit 1
fi

case "$COMMAND" in
  list)
    list_modules
    ;;
  ship-doctor)
    MODULE_INSTALLER="$ROOT_DIR/modules/ship-doctor/install.sh"

    if [[ ! -x "$MODULE_INSTALLER" ]]; then
      echo "ERROR: Ship Doctor installer not found or not executable:"
      echo "  $MODULE_INSTALLER"
      exit 1
    fi

    ARGS=()

    if [[ "$DRY_RUN" -eq 1 ]]; then
      ARGS+=("--dry-run")
    fi

    if [[ "$YES" -eq 1 ]]; then
      ARGS+=("--yes")
    fi

    "$MODULE_INSTALLER" "${ARGS[@]}"
    ;;
  *)
    echo "ERROR: Unknown command: $COMMAND"
    exit 1
    ;;
esac
