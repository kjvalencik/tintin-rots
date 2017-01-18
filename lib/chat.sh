#!/bin/bash

set -euo pipefail

# Initialize variables
log_dir=""
chat_log=""

# Load config
source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

# Create empty files
mkdir -p "$log_dir"
echo "" > "$chat_log"

# Tail the chat log
tail -f "$chat_log"
