#! /usr/bin/env bash
# shellcheck source=/dev/null
# shellcheck disable=SC2044

# Dependencies namespace
dependencies() {
    # Load all shell files in the shlib directory and subdirectories
    load() {
        for file in $(find "$(current-dir)/.." -type f -name "*.sh"); do
            source "${file}"
        done
    }

    "${@:-help}"
}

current-dir() {
    dirname "${BASH_SOURCE[1]}"
}
