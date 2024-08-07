#!/bin/bash
#
# USAGE
#
# bash docs/keymaps/find_vim_keymaps.sh lua/setup/remap.lua

docs/maps.md

# Check if the file path is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 path/to/lua/file"
    exit 1
fi

# File path
file_path=$1

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "File not found: $file_path"
    exit 1
fi

# Search for vim.keymap.set statements and print them
grep -oP 'vim\.keymap\.set\([^)]*\)' "$file_path" > vim_keymap_sets.txt

echo "List of vim.keymap.set statements saved to vim_keymap_sets.txt"
