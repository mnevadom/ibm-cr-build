#!/bin/sh
set -e

token=$1
url=$2
region=$3
resourcegroup=$4

echo "My home is "
echo $HOME

if [ -z $token ]; then
  echo "IBM Login token is required"
  exit 1
fi

if [ -z $url ]; then
  url="cloud.ibm.com"
  echo "Using default ibm url: cloud.ibm.com"
fi

if [ -z $region ]; then
  echo "IBM region is required"
  exit 1
fi

if [ -z $resourcegroup ]; then
  echo "IBM resource group required"
  exit 1
fi

echo "My home is "
echo $HOME

echo RUNNING sudo ibmcloud update 

echo "My home is "
echo $HOME

ibmcloud update --force

echo "My home is "
echo $HOME


echo "My home is "
echo $HOME

echo RUNNIG FROM ACTION: ibmcloud login -a $url -r $region -g $resourcegroup --apikey $token
ibmcloud login -a $url -r $region -g $resourcegroup --apikey $token

echo "My home is "
echo $HOME


