#!/usr/bin/env bash

if [ x"$@" = x"quit" ]
then
    exit 0
fi

if [ "$@" ]
then
    for a in {1..10}
    do
        echo "$a"
    done
    echo "quit"
else
    echo -en "\x00prompt\x1ftesting\n"
    echo -en "\0urgent\x1f0,2\n"
    echo -en "\0active\x1f1\n"
    echo -en "\0markup-rows\x1ftrue\n"
    echo -en "\0message\x1fSpecial <b>bold</b>message\n"

    echo "aap"
    echo "noot"
    echo "mies"
    echo "testing"
    echo "<b>Bold</b>"
    echo "quit"
fi
