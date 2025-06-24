#!/usr/bin/env bash
# filepath: $HOME/dev-env/.tests/word_filter.sh

if [ -z "$1" ]; then
    echo "Error: keyword not provided." >&2
    exit 1
fi

input=$(cat)

if ! echo "$input" | grep -q "$1"; then
    echo "Error: keyword '$1' not found in the input." >&2
    exit 1
else
    echo "Keyword '$1' found in the input."
    echo "$input" | grep "$1" | sed "s/$1/[$1]/g"
    exit 0
fi