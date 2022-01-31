#!/bin/bash

set -e

echo "List found '*sum' binaries:" 
find /bin /sbin /usr/bin /usr/sbin -name '*sum'

echo "PATH: ${PATH}"

OS=$(uname -s)
echo "OS name: ${OS}"

[[ $(uname -s) =~ "MINGW64_NT" ]] && SHASUM=/bin/core_perl/shasum
echo foo > foo.file
FOO_SUM=($(${SHASUM:=shasum} foo.file))

echo "shasum var: ${SHASUM}"
echo "foo sum: ${FOO_SUM}"

# Force exit code to 0 in that specific case
exit 0
