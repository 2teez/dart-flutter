#!/usr/bin/env bash
# Date: 29th August, 2026
# Description: Makefile for dart programming language and flutter
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
    echo "-m: Make a dart mini project from the specified filename"
}

function make_file() {
    filename="$1"
    local filename2=
    ext="${filename##*.}"
    file="${filename%.*}"
    if [[ "$ext" != "dart" ]]; then
        filename="${file}.dart"
        filename2="${file}.py"
    fi
    # check if the file already exists and if so, append a number to the filename
    if [[ -e "${filename}" ]]; then
        echo "File ${filename} already exists. Appending a number to the filename."
        i=1
        while [[ -e "${filename}" ]]; do
            file="${filename%.*}"
            filename="${file}_${i}.dart"
            ((i++))
        done
    fi
    echo "Generating dart file: ${filename}"
    echo "Generating python file: ${filename2}"
    echo "#!/usr/bin/env python3

def main() -> None: ...

if __name__ == \"__main__\":
    main()
    " > "${filename2}"

    chmod +x "${filename2}"
    echo "Done..."
}

function create_dummy_file() {
    filename="$1"
    make_file "${filename}"
    echo "void main() {
        print('Hello, World!');
    }" > "${filename}"
    dart format "${filename}"
    echo "Dart file generated successfully: ${filename}"
    dart run "${filename}"
}

if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 -<options> <file>"
    exit 1
fi

optionstring="c:d:g:r:p:m:h"

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
        m)
            # make a dart mini project from the specified filename
            directory="${OPTARG}"
            mkdir -p "${directory}"
            cd "${directory}" || exit 1
            mkdir bin lib
            cd bin || exit 1
            create_dummy_file main
            cd .. || exit 1
            echo "name: ${directory}
version: 0.1.0
description: A Dart mini project

environment:
  sdk: \">=3.12.0 <4.0.0\"

dev_dependencies:
  lints: ^6.1.0
            " > pubspec.yaml
            dart pub get
            dart run bin/main.dart
            ;;
        *)
            echo "Invalid option: ${opt}"
            exit 1
            ;;
    esac
done
