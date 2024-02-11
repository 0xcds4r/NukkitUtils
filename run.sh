#!/bin/bash

if [ -z "$1" ]; then
    delay=5 # default value
else
    delay=$1
fi

while true; do
    java -cp Nukkit-MOT-SNAPSHOT.jar:sqlite-jdbc-3.45.1.0.jar:sqlite-jdbc-3.45.1.0.jar cn.nukkit.Nukkit
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for ((i=delay; i>0; i--)); do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
done
