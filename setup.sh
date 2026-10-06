#!/bin/bash
echo "Initializing Nom4dv1per loader..."
if [ "$1" == "--init" ]; then
    echo "Primary loader active. Environment configured successfully."
elif [ "$1" == "--deploy" ]; then
    echo "Deploying target package: $2"
else
    echo "Usage: ./setup.sh --init or ./setup.sh --deploy <package>"
fi
