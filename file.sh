#!/bin/bash
# Surya Saha
# Plant Path @Cornell / SOL Genomics
# Purpose: 

set -o nounset
set -o errexit

log() {  # classic logger 
  local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]: "
  echo "${prefix} $@" >&2
}

WDIR = `pwd`


