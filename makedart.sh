#!/usr/bin/env bash
# Date: 29th August, 2026
# Purpose: Makefile for dart programming language and flutter
# Author: omitida
#

function help() {
    echo "Options Available:"
    echo "=================="
    echo "-d: Delete the specified file"
    echo "-h: Display this help message"
    echo "-g: Generate dart file from the specified file"
    echo "-p: Generate a date project from the specified filename"
    echo "-r: Run the specified file"
}

function make_file() {
    local file="$1"
    local ext="${file##*.}"
    local name="${file%.*}"
    if [[ "$ext" != "dart" ]]; then
        name="$name.dart"
    fi
    echo "Generating dart file: $name"
    touch "$name"
    echo "Dart file generated successfully: $name"
}

if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 -<options> <file>"
    exit 1
fi

optionstring="d:g:r:p:h"

while getopts $optionstring opt; do
    case "$opt" in
        d)
            # delete the specified file
            ;;
        g)
            # generate dart code from the specified file
            filename="${OPTARG}"
            make_file "${filename}"
            ;;
        h)
            help
            exit 0
            ;;
        p)
            # generate a date project from the specified filename
            filename="${OPTARG}"
            dart create "${filename}"
            echo "Project generated successfully: ${filename}"
            cd "${filename}" || exit 1
            dart run #devtools
            ;;
        *)
            echo "Invalid option: ${opt}"
            exit 1
            ;;
    esac
done
