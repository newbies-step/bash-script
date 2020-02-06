#!/bin/bash

#Set or unset values of shell options and positional parameters.
#Change the value of shell attributes and positional parameters, or
#display the names and values of shell variables.

# Some important options
#
# -v: Print shell input lines as they are read.
# -x: Print commands and their arguments as they are executed.
# -f: Disable file name generation (globbing).

echo "Normal execution block"
echo "*******************"
echo "Number of positional parameters: $#"
echo "First parameter: ${1:-EMPTY}"
shift $(( $# - 1 ))
echo "Last parameter: ${1:-EMPTY}"

set -v 

echo "set with options -v"
echo "%s\n" "*******************"
echo "Number of positional parameters: $#"
echo "First parameter: ${1:-EMPTY}"
shift $(( $# - 1 ))
echo "Last parameter: ${1:-EMPTY}"

set +v #unset the -v options (using +sign)
set -x 

echo "set with options -v"
echo "%s\n" "*******************"
echo "Number of positional parameters: $#"
echo "First parameter: ${1:-EMPTY}"
shift $(( $# - 1 ))
echo "Last parameter: ${1:-EMPTY}"

set +x 

set -f #disable the file globbing (like *, brace expansion)

printf "%s\n" /tmp/* #verify the result from the command
