#! /usr/bin/env bash

## Displays a message in a box
info() {
  echo -e "──────────────────────────────────────────"
  echo -e "$*"
  echo -e "──────────────────────────────────────────"
}

## Displays a message in a box
banner() {
  color cyan
  info "$*"
  color clear
}

## Displays success message
success() {
  color green
  info "$*"
  color clear
}

## Displays a warning
warn() {
  color yellow
  info "$*"
  color clear
}

## Display an error message and exit
error() {
  color red
  info "$*"
  color clear
  exit 1
}

## Prints a message when verbose is set
verbose() {
  if is_verbose; then
    echo "${@}"
  fi
}
