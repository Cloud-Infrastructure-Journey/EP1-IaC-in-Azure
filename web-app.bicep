resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'asp-journey-01'
  location: resourceGroup().location
  sku: {
    name: 'F1'
    tier: 'Free'
  }
}

resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: 'webapp-journey-01'
  location: resourceGroup().location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'Resource'
  }
  properties: {
    serverFarmId: appServicePlan.id
  }
}
