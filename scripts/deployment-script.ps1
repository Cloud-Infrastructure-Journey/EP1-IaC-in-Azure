# create resource group 

New-AzResourceGroup -Name rg-bicep -Location westeurope

# create storage account

New-AzResourceGroupDeployment -Name deploy-bicep -ResourceGroupName rg-bicep -TemplateFile .\main.bicep -TemplateParameterFile .\param.json

