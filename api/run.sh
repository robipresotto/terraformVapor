#!/bin/bash

set -eu

export TF_VAR_app=$1

# dockerize the api
docker build -t $TF_VAR_app .

# terraform the api
cd .. && cd terraform
if .terraform 
then
  terraform apply
else
  terraform init
  terraform apply
fi
