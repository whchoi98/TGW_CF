#!/bin/bash
date
cat ./server.txt |  while read output
do
    ping -c 3 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "SERVER $output is up" 
    else
    echo "SERVER $output is down"
    fi
done
