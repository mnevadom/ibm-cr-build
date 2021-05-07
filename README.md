# CR BUILD Action IBMCloud

This action is to build an image into IBM Cloud

## Entradas

### `url`

**Mandatory** url of the server like: de.icr.io

### `namespace`

**Mandatory** namspace to build the image

### `imagename`

**Mandatory** image name

### `buildnr`

**Mandatory** build nr: typically commit nr

### `dir`

**Mandatory** dir to find Dockerfile into the repository


## Ejemplo de uso


```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    
    - uses: mnevadom/ibm-cr-build@v1
      with:
        url: de.icr.io
        namespace: dgp-registry
        imagename: postservice
        buildnr: c76d5f032667da9326bb8df7e96f06a4e3362044
        dir: postservice

```
