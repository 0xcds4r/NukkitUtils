#!/bin/bash

for plugin_dir in */ ; do
    cd "$plugin_dir"
    
    if [ -f "pom.xml" ]; then
        echo "Compiling $plugin_dir"
        mvn clean package
    else
        echo "Skipping $plugin_dir: No pom.xml found"
    fi
    
    cd ..
done
