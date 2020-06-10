#!/bin/bash

# Surya Saha
# Purpose:

set -u #exit if uninit var
set -e #exit if non-zero return value (error), use command || {echo 'command failed'; exit 1;}
set -o nounset
set -o errexit

readonly PROGNAME=$(basename "$0")
readonly PROGDIR=$(readlink -m "$(dirname "$0")")
readonly WDIR=$(pwd)

usage() {
    echo "usage:
    $PROGNAME <arg1> <arg2>
    
    Example:
    $PROGNAME ARG1 ARG2"
    exit 1
}

if [ "$#" -ne 2 ]
then
	usage
fi

printf "%s" "$1"
printf "%s" "$2"
