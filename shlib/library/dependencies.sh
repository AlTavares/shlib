#! /usr/bin/env bash
# shellcheck source=/dev/null
# shellcheck disable=SC2044

# Dependencies namespace
dependencies() {
    # Load all shell files in the subdirectories
    load() {
        for file in $(find "$(dirname "$0")" -type f -name "*.sh"); do
            source "${file}"
        done
    }

    "${@:-help}"
}
