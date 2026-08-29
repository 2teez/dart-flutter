#!/usr/bin/env bash
# Date: 29th August, 2026
# Purpose: Makefile for dart programming language and flutter
# Author: omitida
#

function help() {
    echo "Options Available:"
    echo "=================="
    echo "-h, --help: Display this help message"
}

if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 -<options> <file>"
    exit 1
fi

optionstring="d:g:r:h"

while getopts $optionstring opt; do
    case "$opt" in
        h)
            help
            exit 0
            ;;
        *)
            echo "Invalid option: $opt"
            exit 1
            ;;
    esac
done
