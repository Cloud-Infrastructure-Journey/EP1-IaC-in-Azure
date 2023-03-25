// storage.bicep

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'ep1cloudjourneyazure'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource cloudstg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'cldjoustg0325'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
