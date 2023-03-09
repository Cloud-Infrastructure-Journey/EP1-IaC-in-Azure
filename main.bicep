// Create multiple storage accounts for each region

param location string 
param storageAccountName string


mudule createsa1 './modules/storage-w-parametrization.bicep' = {
  name: 'createsa1'
  params: {
    storageAccountName: '${storageAccountName}1'
    location: 'westus'
  }
}

mudule createsa2 './modules/storage-w-parametrization.bicep' = {
  name: 'createsa2'
  params: {
    storageAccountName: '${storageAccountName}2}'
    location: 'eastus'
  }
}
