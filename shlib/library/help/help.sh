#! /usr/bin/env bash

## Generates a help message
help() {
    LANG=en_US.UTF_8
    caller=${BASH_SOURCE[1]}
    "$(current-dir)/help-generator" "${caller}"
}
