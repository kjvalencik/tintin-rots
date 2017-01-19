#!/bin/bash

set -euo pipefail

# Initialize variables
log_dir=""
hud_log=""

# Load config
source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

# Create empty files
mkdir -p "$log_dir"
echo "" > "$hud_log"

# Watch the HUD log
tail -Fs1 "$hud_log" 2> /dev/null
