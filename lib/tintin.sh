#!/bin/bash

set -euo pipefail

# Initialize variables
cur=""
main_tin=""
session=""

# Load config
source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

# Move into the current directory for relative paths
cd "$cur"

# Start tintin++
tt++ "${main_tin}"

# End the session with tintin++
tmux kill-session -t "$session"
