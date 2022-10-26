#! /usr/bin/env bash

shlib() {
    install() {
        local url=https://github.com/AlTavares/shlib/archive/refs/heads/main.zip
        # Downloads and unzips the repository
        curl -L "${url}" -o shlib.zip
        unzip shlib.zip
        trap "rm -rf shlib.zip shlib-main" EXIT
        # Moves the files to the current directory
        mv shlib-main/shlib ./shlib
    }
}