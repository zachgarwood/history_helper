#!/bin/bash

start() {
    echo "Starting server..."
    shell2http -no-index -cgi -form \
        /commands 'source srv/controllers/commands.sh' \
        /documentation 'source srv/controllers/documentation.sh $v_command'
}
