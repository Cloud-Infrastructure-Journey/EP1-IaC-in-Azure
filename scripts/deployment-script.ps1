# Login to Azure

Connect-AzAccount

# list subscriptions

Get-AzSubscription

# Set subscription

Select-AzSubscription -SubscriptionId "SUBSCRIPTION_ID"

# create resource group 

New-AzResourceGroup -Name rg-bicep -Location westeurope

# create storage account

New-AzResourceGroupDeployment -Name deploy-bicep -ResourceGroupName rg-bicep -TemplateFile .\main.bicep -TemplateParameterFile .\param.json

