#!/bin/bash
source env.sh

echo "##############################"
echo "build"


az group create \
    --name $AZ_RG \
    --location $AZ_LOCATION


# az group delete --name $AZ_RG --location $AZ_LOCATION

az appservice plan create \
    --name "WebApp_$AZ_NAME" \
    --resource-group $AZ_RG \
    --sku P0v3

# // get web app plans
# az appservice plan list --output table

# list app service plans skus
az appservice list-skus \
    --location $AZ_LOCATION \
    --output table

# az webapp create \
#     --name "WebApp_$AZ_RG" \
#     --location $AZ_LOCATION \
#     --resource-group MyResourceGroup\ 
#     --plan MyPlan

# az webapp deployment source config \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --repo-url

# az webapp config appsettings set \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_NAME=$AZ_NAME"

# az webapp config appsettings set \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_RG=$AZ_RG"

# az webapp config appsettings set \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_VNET=$AZ_VNET"

# az webapp config appsettings set \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_IP=$AZ_IP"

# az webapp config appsettings set \  
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_SUBNET=$AZ_SUBNET"



# az webapp config appsettings set \
#     --name "WebApp_$AZ_RG" \
#     --resource-group $AZ_RG \
#     --settings "AZ_NSG=$AZ_NSG" 


