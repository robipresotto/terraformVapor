#!/bin/bash

set -eu

read -p "Project name: " projectName
export TF_VAR_app=$projectName

# dockerize the api
docker build -t $projectName .

# terraform the api
bash ../terraform/terraform.sh

