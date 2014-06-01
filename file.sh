#!/bin/bash
# Surya Saha
# SOL Genomics @BTI / Plant Path @Cornell
# Purpose: 

set -o nounset
set -o errexit

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink -m $(dirname $0))
readonly ARGS="$@"


log() { # classic logger
  local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]: "
  echo "${prefix} $@" >&2
}

readonly WDIR = `pwd`
