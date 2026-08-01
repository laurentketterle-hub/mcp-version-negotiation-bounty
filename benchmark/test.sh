#!/bin/sh
set -eu

workspace_root=${WORKSPACE_ROOT:-/workspace}
target=$workspace_root/accept-version.sh

fail() {
  printf 'FAIL: %s\n' "$1" >&2
  exit 1
}

expect_success() {
  expected=$1
  shift
  output=$(sh "$target" "$@") || fail "expected success for: $*"
  [ "$output" = "$expected" ] || fail "unexpected output for: $*"
}

expect_failure() {
  if sh "$target" "$@" >/dev/null 2>&1; then
    fail "expected failure for: $*"
  fi
}

expect_success \
  '2025-11-25' \
  '2025-11-25' \
  '2025-11-25,2025-06-18' \
  '2025-11-25'

expect_success \
  '2025-06-18' \
  '2025-11-25' \
  '2025-11-25,2025-06-18' \
  '2025-06-18'

expect_failure \
  '2025-11-25' \
  '2025-11-25,2025-06-18' \
  '2025-03-26'

expect_failure \
  '2025-11-25' \
  '2025-11-25,2025-06-18-preview' \
  '2025-06-18'

expect_failure \
  '2025-03-26' \
  '2025-11-25,2025-06-18' \
  '2025-06-18'

printf 'PASS\n'
