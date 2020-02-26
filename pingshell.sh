#!/bin/bash
date
cat ./server.txt |  while read output
do
    ping -c 3 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up" 
    else
    echo "node $output is down"
    fi
done
