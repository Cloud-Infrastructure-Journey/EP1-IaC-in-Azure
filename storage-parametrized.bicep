// 
param stgName string // = 'ep1cloudjourneyazure'
param region string // = resourceGroup().id

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: stgName
  location: region
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
