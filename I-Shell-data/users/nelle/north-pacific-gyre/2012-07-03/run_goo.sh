#!/bin/bash

touch log.txt

while [ $1 ]
do
    echo "Working on file $1\n" | tee -a log.txt
    bash goostats $data output\\$data\-stats.txt
    echo "Done processing $1\n" | tee -a log.txt
    shift 1
done
