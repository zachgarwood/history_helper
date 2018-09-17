#!/bin/bash

echo "Access-Control-Allow-Origin: *\nContent-Type: application/json\n";
cat -n ~/.bash_history | ./views/commands.sh
