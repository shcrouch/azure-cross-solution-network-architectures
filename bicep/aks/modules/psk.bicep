param onpremSubnetRef string
param keyvault_name string
param name string

var psk = '${uniqueString(resourceGroup().id, onpremSubnetRef, name)}aA1!'

resource keyvaultname_secretname 'Microsoft.KeyVault/vaults/secrets@2021-10-01' = {
  name: '${keyvault_name}/${name}-psk'
  properties: {
    contentType: 'securestring'
    value: psk
    attributes: {
      enabled: true
    }
  }
}

output psk string = psk
