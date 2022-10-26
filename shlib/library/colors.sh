#! /usr/bin/env bash

color() {

    ## Remove color personalization
    clear() {
        echo -ne "\e[0m"
    }

    ## Set cyan color
    cyan() {
        echo -ne "\e[1;36m"
    }

    ## Set green color
    green() {
        echo -ne "\e[1;32m"
    }

    ## Set yellow color
    yellow() {
        echo -ne "\e[1;33m"
    }

    ## Set red color
    red() {
        echo -ne "\e[1;31m"
    }

    "${@:-help}"
}
