param spokeAddressPrefix string
param hubAddressPrefix string
param subnetAddressPrefix string
param vnetName string
param subnetName string
param applianceAddress string
param nsgId string
param location string

resource routeTable 'Microsoft.Network/routeTables@2021-03-01' = {
  name: 'onprem-route-table'
  location: location
  properties: {
    routes: [
      {
        name: 'route-to-hub'
        properties: {
          addressPrefix: hubAddressPrefix
          nextHopType: 'VirtualAppliance'
          nextHopIpAddress: applianceAddress
        }
      }
      {
        name: 'route-to-spoke'
        properties: {
          addressPrefix: spokeAddressPrefix
          nextHopType: 'VirtualAppliance'
          nextHopIpAddress: applianceAddress
        }
      }
    ]
    disableBgpRoutePropagation: true
  }
}

resource routeAttachment 'Microsoft.Network/virtualNetworks/subnets@2021-08-01' = {
  name: '${vnetName}/${subnetName}'
  properties: {
    privateEndpointNetworkPolicies: 'Disabled'
    addressPrefix: subnetAddressPrefix
    routeTable: {
      id: routeTable.id
    }
    networkSecurityGroup: {
      id: nsgId
    }
  }
}
