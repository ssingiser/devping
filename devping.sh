#!/bin/bash

SERVER=172.29.200.70
TIMES=4


echo 'Checking pvedev1 status'

ping $SERVER -c $TIMES -i &> /dev/null
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo 'System is up'
    exit 0
else
    echo 'system is down'
    exit 1

fi