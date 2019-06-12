#!/bin/bash -e
DIRECTORY=$1
WORD=$2

if [[ -d $DIRECTORY ]] && [[ $# -eq 2 ]]; then
    echo "$DIRECTORY is a directory"
else
    echo "dir arg1 is not valid dir or word arg2 is empty" 
    exit 1
fi

grep -rnw ${DIRECTORY} -e ${WORD}

