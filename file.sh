#!/bin/bash
# Surya Saha
# SOL Genomics @BTI / Plant Path @Cornell
# Purpose: 

set -u #exit if uninit var
set -e #exit if non-zero return value (error), use command || {echo 'command failed'; exit 1;}
set -o nounset
set -o errexit
# set -x #start
# set +x #end

readonly PROGNAME=$(basename "$0")
readonly PROGDIR=$(readlink -m "$(dirname "$0")")
readonly WDIR=$(pwd)

usage() {
  cat <<- EOF
    usage: $PROGNAME options
    
    Program ........

    OPTIONS:
       -f --file                file to operate on
       -v --verbose             Verbose. You can specify more then one -v to have more verbose
       -x --debug               debug
       -h --help                show this help

    
    Examples:
      
       Run:
       $PROGNAME --file input.txt
       
EOF
}


cmdline() {
    # got this idea from here:
    # http://kirk.webfinish.com/2009/10/bash-shell-script-to-use-getopts-with-gnu-style-long-positional-parameters/
    local arg=
    for arg
    do
        local delim=""
        case "$arg" in
            #translate --gnu-long-options to -g (short options)
            --file)         args="${args}-f ";;
            --help)           args="${args}-h ";;
            --verbose)        args="${args}-v ";;
            --debug)          args="${args}-x ";;
            #pass through anything else
            *) [[ "${arg:0:1}" == "-" ]] || delim="\""
                args="${args}${delim}${arg}${delim} ";;
        esac
    done

    #Reset the positional parameters to the short options
    eval set -- "$args"

    while getopts "vhxf" OPTION
    do
         case $OPTION in
         v)
             readonly VERBOSE=1
             ;;
         h)
             usage
             exit 0
             ;;
         x)
             readonly DEBUG='-x'
             set -x
             set -e #exits on non 0 return
             ;;
         f)
             readonly FILE=1
             ;;
        esac
    done

    return 0
}

log() { # classic logger
  local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]: "
  echo "${prefix} $@" >&2
}

<<<<<<< HEAD
WDIR=`pwd`








log

=======
main() {
  cmdline "$ARGS"
  
  local i
  local files=$(ls ./*.txt)
  
  for i in $files
  do
    echo "$i"
  done
}
  
main
>>>>>>> 7b978902dec92f5334d579b9a5c917c90ef33d26
