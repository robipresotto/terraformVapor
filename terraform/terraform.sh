#!/bin/bash

cd ../terraform

if [ -d ".terraform" ]
then
  terraform apply
else
  terraform init
  terraform apply
fi