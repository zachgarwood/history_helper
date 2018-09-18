#!/bin/bash

shell2http -no-index -cgi -form \
    /commands 'source controllers/commands.sh' \
    /man 'source controllers/man.sh $v_command'
