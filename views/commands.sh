#!/bin/bash

jo commands=$(jo -a $(awk '{ print "id="$1, "command="$2 }' | xargs -n2 jo))
