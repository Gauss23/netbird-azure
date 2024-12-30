#!/bin/bash

# Check if params.sh exists before sourcing it
if [[ ! -f ./params.sh ]]; then
    echo "Error: params.sh not found. Please ensure the file exists. Copy the file params_dist.sh to params.sh and fill in the required parameters."
    exit 1
fi

# Source the parameter list from params.sh
source ./params.sh

# Function to replace the parameters in the files
replace_parameters() {
    local file=$1

    for param in "${!parameterList[@]}"; do
        if grep -q "$param" "$file"; then
            sed -i "s/${param}/${parameterList[$param]}/g" "$file"
            echo "Replacing $param with ${parameterList[$param]} in $file"
        fi
    done
}

# Find all files int the current directory and its subdirectories and call the replace_parameters function
find . -type f ! -name 'replace-params.sh' | while read -r file; do
    replace_parameters "$file"
done

echo "Replacement of parameters completed"