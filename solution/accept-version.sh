#!/bin/sh
set -eu

[ "$#" -eq 3 ] || exit 64

requested=$1
supported=$2
selected=$3

# Deliberately faulty starter: substring matching can accept partial versions,
# and the requested version is never checked against the client's list.
case "$supported" in
  *"$selected"*)
    printf '%s\n' "$selected"
    ;;
  *)
    exit 1
    ;;
esac
