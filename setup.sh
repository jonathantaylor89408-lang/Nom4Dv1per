#!/bin/bash
set -euo pipefail
ROOT="${VIPER_HOME:-$HOME/.viperspace}"
cmd="${1:-}"
write_config() {
  mkdir -p "$ROOT/pins" "$ROOT/logs" "$ROOT/config"
  cat > "$ROOT/config/desk.env" << 'END'
STORE=https://nomadone.gumroad.com/
SAMPLE=https://nomadone.gumroad.com/l/tvzebu
SAMPLE_ID=tvzebu
DESK=https://vipergearlabs.grok.me/
END
}
case "$cmd" in
  --init) write_config; echo "Ready: $ROOT" ;;
  --deploy)
    [ "${2:-}" = "standard" ] || { echo "Usage: ./setup.sh --deploy standard"; exit 1; }
    write_config
    echo "Standard config written. No scan was run."
    ;;
  *) echo "Usage: ./setup.sh --init"; echo "       ./setup.sh --deploy standard"; exit 1 ;;
esac
