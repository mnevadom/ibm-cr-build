# LOGIN Action IBMCloud

This action is to login into IBM Cloud

## Entradas

### `token`

**Obligatorio** Token to use for login

### `url`

**Opcional** UR ibm cloud

### `region`

**Obligatorio** Region to connect to

### `resourcegroup`

**Obligatorio** Resource Group


## Ejemplo de uso

docker run -ti ibmlogin mytoken "cloud.ibm.com" "eu-de" test-resources


```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    
    - uses: mnevadom/ibmlogin@v1
      with:
        token: ${{ secrets.IBM_TOKEN }}
        url: "cloud.ibm.com"
        region: "eu-de"
        resourcegroup: test-resources

```
