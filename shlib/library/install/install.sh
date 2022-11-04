#! /usr/bin/env bash

shlib() {
    update() {
        is-global() {
            [[ -v flags[g] || -v flags[global] ]]
        }

        if is-global; then
            cd "${SHLIB_ROOT}" || exit 1
        fi

        if [ ! -d "./shlib" ]; then
            error "shlib directory not found"
        fi

        banner "Updating shlib"
        bash <(curl https://raw.githubusercontent.com/AlTavares/shlib/main/install)
        success "Update finished"
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
