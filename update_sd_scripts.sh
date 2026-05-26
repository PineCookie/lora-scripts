#!/usr/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -x "$script_dir/.venv/bin/python" ]; then
    "$script_dir/.venv/bin/python" "$script_dir/update_sd_scripts.py" "$@"
elif command -v python3 >/dev/null 2>&1; then
    python3 "$script_dir/update_sd_scripts.py" "$@"
else
    python "$script_dir/update_sd_scripts.py" "$@"
fi
