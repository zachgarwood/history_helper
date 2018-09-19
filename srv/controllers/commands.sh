#!/bin/bash

echo "Access-Control-Allow-Origin: *\nContent-Type: application/json\n";
jo commands="$(
    cat -n ~/.bash_history \
        | awk '{
            id=$1;
            name=$2;
            if (NF > 2) {
                args=substr($0, index($0,$3));
            } else {
                args=""
            }
            printf "id=%d name=%s args=\"%s\"\n", id, name, args;
        }' \
        | xargs -n3 jo \
        | jo -a
)"
