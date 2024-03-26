#!/bin/bash

source env.sh

echo "##############################"
echo "teardown"

az group delete --name $AZ_RG