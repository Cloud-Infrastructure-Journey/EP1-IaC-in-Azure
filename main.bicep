// Create multiple storage accounts for each region

param stgName string


module createsa1 './modules/storage-w-parametrization.bicep' = {
  name: 'createsa1'
  params: {
    stgName: '${stgName}1'
    location: 'westus'
  }
}

module createsa2 './modules/storage-w-parametrization.bicep' = {
  name: 'createsa2'
  params: {
    stgName: '${stgName}2'
    location: 'eastus'
  }
}
