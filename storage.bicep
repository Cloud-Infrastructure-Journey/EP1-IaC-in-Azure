// 

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'ep1cloudjourneyazure'
  location: resourceGroup().id
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
