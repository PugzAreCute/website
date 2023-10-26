#!/bin/bash
for j in `ps -ef | grep runit.sh | awk '{print $2}'`;
do
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