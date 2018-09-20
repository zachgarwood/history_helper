#!/bin/bash

echo "Access-Control-Allow-Origin: *\nContent-Type: application/json\n";
jo documentation="$(jo command=$1 info="$(info $1)" help="$($1 --help || $1 -h 2>&1)")"
