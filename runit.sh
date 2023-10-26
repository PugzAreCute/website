#!/bin/bash
for j in `pgrep runit.sh`;do
    if [$$ != j];
    then
        kill j
    fi
done
cd production_out
while [ true ]; do
    echo "(Re)Starting server..."
    node build
    for i in 3 2 1; do
        printf 'Server restarting in %s\n' "${i}"
        sleep 1
    done
done