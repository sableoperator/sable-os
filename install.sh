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
  ./install.sh sable-cli [options]

Options:
  --dry-run     Show planned actions without changing anything
  --yes         Run without asking for confirmation
  --help        Show this help message

Examples:
  ./install.sh list
  ./install.sh ship-doctor --dry-run
  ./install.sh ship-doctor --yes
  ./install.sh sable-cli --dry-run
  ./install.sh sable-cli --yes
USAGE
}

list_modules() {
  echo "Available SableOS modules:"
  echo "  ship-doctor    System health checks and diagnostics"
  echo "  sable-cli      Main command hub for SableOS"
}

run_module_installer() {
  local module_name="$1"
  local display_name="$2"
  local module_installer="$ROOT_DIR/modules/$module_name/install.sh"

  if [[ ! -x "$module_installer" ]]; then
    echo "ERROR: $display_name installer not found or not executable:"
    echo "  $module_installer"
    exit 1
  fi

  local args=()

  if [[ "$DRY_RUN" -eq 1 ]]; then
    args+=("--dry-run")
  fi

  if [[ "$YES" -eq 1 ]]; then
    args+=("--yes")
  fi

  "$module_installer" "${args[@]}"
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
    sable-cli)
      COMMAND="sable-cli"
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
    run_module_installer "ship-doctor" "Ship Doctor"
    ;;
  sable-cli)
    run_module_installer "sable-cli" "Sable CLI"
    ;;
  *)
    echo "ERROR: Unknown command: $COMMAND"
    exit 1
    ;;
esac
