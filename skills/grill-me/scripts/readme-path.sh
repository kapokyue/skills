#!/bin/sh
set -eu
export LC_ALL=C

if [ "$#" -ne 1 ]; then
    printf 'Usage: %s <feature-slug>\n' "$0" >&2
    exit 2
fi

case "$1" in
    ''|*[!a-z0-9-]*)
        printf 'Invalid feature slug: %s\n' "$1" >&2
        exit 2
        ;;
esac

dir=".grills/$1"
path="$dir/README.md"
mkdir -p "$dir"
if [ ! -f "$path" ]; then
    (set -C; : > "$path")
fi
printf '%s\n' "$path"
