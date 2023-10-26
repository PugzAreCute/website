#!/bin/bash
pkill runit.sh
pkill node
export BUILD_ID=JENKINS_NO_KILL
while [ true ]; do
    echo "(Re)Starting server..."
    BUILD_ID=JENKINS_NO_KILL node build
    for i in 3 2 1; do
        printf 'Server restarting in %s\n' "${i}"
        sleep 1
    done
done