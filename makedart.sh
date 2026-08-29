#!/usr/bin/env bash
# Date: 29th August, 2026
# Purpose: Makefile for dart programming language and flutter
# Author: omitida
#
filename=
function help() {
    echo "Options Available:"
    echo "=================="
    echo "-c: compile a dart file to generate an optimized executable"
    echo "-d: Delete the specified file"
    echo "-h: Display this help message"
    echo "-g: Generate dart file from the specified file"
    echo "-p: Generate a date project from the specified filename"
    echo "-r: Run the specified file"
}

function make_file() {
    filename="$1"
    ext="${filename##*.}"
    filename="${filename%.*}"
    if [[ "$ext" != "dart" ]]; then
        filename="$filename.dart"
    fi
    echo "Generating dart file: $filename"
}

function create_dummy_file() {
    filename="$1"
    make_file "$filename"
    echo "void main() {
        print('Hello, World!');
    }" > "$filename"
    dart format "$filename"
    echo "Dart file generated successfully: ${filename}"
    dart run "$filename"
}

if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 -<options> <file>"
    exit 1
fi

optionstring="c:d:g:r:p:h"

while getopts $optionstring opt; do
    case "$opt" in
        c)
            # compile the specified file
            filename="${OPTARG}"
            if ! [[ -e "$filename" ]]; then
                echo "File not found: ${filename}"
                exit 1
            fi
            dart compile exe "${filename}"
            echo "Executable compiled successfully: ${filename}"
            ;;
        d)
            # delete the specified file
            filename="${OPTARG}"
            if ! [[ -e "$filename" ]]; then
                echo "File not found: ${filename}"
                exit 1
            fi
            while read -r -p "Are you sure you want to delete ${filename}? (y/n) " ans; do
                case "${ans}" in
                    [Yy]* ) rm "$filename"; echo "File deleted successfully: ${filename}"; break;;
                    [Nn]* ) echo "Deletion cancelled."; break;;
                    * ) echo "Please answer yes or no.";;
                esac
            done
            ;;
        g)
            # generate dart code from the specified file
            filename="${OPTARG}"
            create_dummy_file "${filename}"
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
            dart run
            ;;
        r)
            # run the specified file
            filename="${OPTARG}"
            dart format "$filename"
            dart run "$filename"
            ;;
        *)
            echo "Invalid option: ${opt}"
            exit 1
            ;;
    esac
done
