#!/bin/sh
set -eu

[ "$#" -eq 3 ] || exit 64

requested=$1
supported=$2
selected=$3

# Check that both requested and selected are exact tokens in the supported list
found_requested=0
found_selected=0
IFS=','
for token in $supported; do
    [ "$token" = "$requested" ] && found_requested=1
    [ "$token" = "$selected" ] && found_selected=1
done

[ "$found_requested" = 1 ] && [ "$found_selected" = 1 ] || exit 1
printf '%s
' "$selected"
