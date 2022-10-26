#! /usr/bin/env bash

declare -g -a args
declare -g -a flags

parse-arguments() {
  while (("$#")); do
    case "$1" in
    --*)
      flags["${1#--}"]=true
      ;;
    -*)
      flags["${1#-}"]=true
      ;;
    *=*)
      arg=$1
      key="${arg%%=*}"
      value="${arg#*=}"
      args[$key]=$value
      ;;
    esac
    shift
  done
  if is-verbose; then
    print-flags
    print-args
  fi
  set-flags
}

set-flags() {
  if is-verbose; then
    set -v
  fi
  if is-dry-run; then
    set -n
  fi
}

print-flags() {
  echo "flags:"
  for key in "${!flags[@]}"; do
    echo "  ${key}"
  done
}

print-args() {
  echo "args:"
  for key in "${!args[@]}"; do
    echo "  ${key}: ${args[$key]}"
  done
}

is-verbose() {
  [[ -v flags[v] || -v flags[verbose] ]]
}

is-dry-run() {
  [[ -v flags["dry-run"] ]]
}
