#!/bin/bash
echo "Hello from runit.sh! If you see this in the jenkins build, something messed up"
function rkill() {
    for childpid in `pgrep -P $1|xargs`;
    do
        rkill $childpid
    done
    kill -9 $1
}

for j in `pgrep runit.sh`;do
    echo $j
    if (($BASHPID != $j));
    then
        echo $j
        rkill $j
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
