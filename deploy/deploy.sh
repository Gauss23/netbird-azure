#!/bin/bash

# Parse command-line arguments
FORCE=false
while getopts "f" opt; do
    case $opt in
        f)
            FORCE=true
            ;;
        *)
            echo "Usage: $0 [-f]"
            exit 1
            ;;
    esac
done

# Check if the folder /opt/netbird already exists
if [[ -d /opt/netbird && $FORCE == false ]]; then
    echo "Error: The folder /opt/netbird already exists. Deployment aborted."
    echo "If you want to deploy the newest version of the config files, please make sure to copy the value of DataStoreEncryptionKey from the management.json"
    echo "then re-run this script with -f"
    exit 1
fi

mkdir -p /opt/netbird
cp -a . /opt/netbird

mkdir -p /opt/netbird/data-dirs/mgmt-data
mkdir -p /opt/netbird/data-dirs/pgsql-data
mkdir -p /opt/netbird/data-dirs/signal-data
mkdir -p /opt/netbird/data-dirs/caddy-data

rm /opt/netbird/*.sh
echo "Deployment done"