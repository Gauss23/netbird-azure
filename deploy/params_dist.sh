#!/bin/bash

# parameterlist: Search value -> Replacement value
declare -A parameterList=(
    # Public FQDN of the NetBird server, you want to use, the FQDN needs to be resolvable to the public IP of the NetBird server
    ["###NB_PUBLIC_FQDN###"]="demo.example.com"
    # Public IP of the NetBird server
    ["###NB_PUBLIC_IP###"]="1.1.1.1"
    # Internal domain you want to use in NetBird
    ["###NB_INTERNAL_DOMAIN###"]="internal-netbird.local"
    # some secrets, which are created for you
    ["###NB_TURN_PW###"]="$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20)"
    ["###NB_RELAY_SECRET###"]="$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20)"
    ["###NB_POSTGRES_PW###"]="$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20)"
    # Azure AD parameters
    # The Azure AD tenant ID, it's called issuer id here, i.e. https://login.microsoftonline.com/##AZURE_ISSUER_ID##/v2.0
    ["###AZURE_ISSUER_ID###"]="AZURE_ISSUER_ID"
    # The Azure AD object ID of the application, which is created in the Azure AD tenant
    ["###AZURE_OBJECT_ID###"]="AZURE_OBJECT_ID"
    # The Azure AD client ID of the application, which is created in the Azure AD tenant
    ["###AZURE_CLIENT_ID###"]="AZURE_CLIENT_ID"
    # The Azure AD client secret of the application, which is created in the Azure AD tenant
    ["###AZURE_CLIENT_SECRET###"]="AZURE_CLIENT_SECRET"
    # The Azure AD object ID, which is created in the Azure AD tenant
    ["###AZURE_OBJECT_ID###"]="AZURE_OBJECT_ID"
)