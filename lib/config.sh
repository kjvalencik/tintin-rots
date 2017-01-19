#!/bin/bash

set -euo pipefail

cur="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

session="${MUD_SESSION-tintin-rots}"
log_dir="${cur}/logs"
chat_log="${log_dir}/chat.log"
hud_log="${log_dir}/hud.log"
main_tin="${cur}/commands/main.tin"
tmux_conf="${cur}/tmux.conf"

# Echo the config
[[ $0 != "$BASH_SOURCE" ]] || cat << EOF
cur="${cur}"
session="${session}"
log_dir="${log_dir}"
chat_log="${chat_log}"
hud_log="${hud_log}"
main_tin="${main_tin}"
tmux_conf="${tmux_conf}"
EOF
