#!/bin/bash

START=0
MAX_REQUESTS=1000
for (( i=$START; i<=$MAX_REQUESTS; i++ ))
do
    curl -o /dev/null -s -w $i". time_total: %{time_total}\n" http://alexa.cirelli.org &
done;
