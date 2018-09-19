#!/bin/bash

start() {
    echo "Starting server..."
    shell2http -no-index -cgi -form \
        /commands 'source srv/controllers/commands.sh' \
        /man 'source srv/controllers/man.sh $v_command'
}
