#! /usr/bin/env bash

shlib() {
    update() {
        banner "Updating shlib"
    }

    init() {
        bash() {
            # Copy file if it doesn't exist
            if [ -f ./run ]; then
                warn "run file already exists"
                exit 0
            fi
            banner "Creating bash template"
            mv "$(current-dir)/templates/run-bash" ./run
            chmod +x ./run
        }

        "${@:-help}"
    }

    "${@:-help}"
}
