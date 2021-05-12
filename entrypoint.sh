#!/bin/sh
set -e

REGISTRY_URL=$1
REGISTRY_NAMESPACE=$2
IMAGE_NAME=$3
BUILD_NUMBER=$4
DIR=$5


echo "My home is "
echo $HOME



echo RUNNING sudo ibmcloud update 


echo RUNNIG FROM ACTION: ibmcloud login -a $url -r $region -g $resourcegroup --apikey $token


echo "My home is "
echo $HOME


