#!/bin/bash

while true
do
    HTTP_CODE=`curl -o /dev/null -s --head -w "%{http_code}" "192.168.1.238"`
    if [ ${HTTP_CODE} -ne 200 ]
    then
        echo "Hello World is down !"
    else
        echo "Hello World is online HTTP/2 200 OK !"
    fi
    sleep 1
done
