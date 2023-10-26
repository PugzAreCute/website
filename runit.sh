#!/bin/bash
while [ true ]; do
    echo "(Re)Starting server..."
    node build
    for i in 3 2 1; do
        printf 'Server restarting in %s\n' "${i}"
        sleep 1
    done
done