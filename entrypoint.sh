#!/bin/bash
set -e


cp -r /github/home/.bluemix $HOME

REGISTRY_URL=$1
REGISTRY_NAMESPACE=$2
IMAGE_NAME=$3
BUILD_NUMBER=$4
DIR=$5

ls $HOME/.bluemix
cat $HOME/.bluemix/config.json

echo -e "Variables de entorno de compilación:"
echo "REGISTRY_URL=${REGISTRY_URL}"
echo "REGISTRY_NAMESPACE=${REGISTRY_NAMESPACE}"
echo "IMAGE_NAME=${IMAGE_NAME}"
echo "BUILD_NUMBER=${BUILD_NUMBER}"

# Obtenga más información sobre las variables de entorno disponibles en:
# https://cloud.ibm.com/docs/services/ContinuousDelivery?topic=ContinuousDelivery-deliverypipeline_environment#deliverypipeline_environment

# Para revisar o cambiar las opciones de compilación utilice:
# ibmcloud cr build --help

echo "ls ..."
ls

cd $DIR

echo -e "Comprobando el Dockerfile en la raíz de repositorio"
if [ -f Dockerfile ]; then 
   echo "Se ha encontrado el Dockerfile"
else
    echo "No se ha encontrado el Dockerfile"
    exit 1
fi

echo -e "Compilando la imagen del contenedor"

ibmcloud --help

ibmcloud cr build -t $REGISTRY_URL/$REGISTRY_NAMESPACE/$IMAGE_NAME:$BUILD_NUMBER .

