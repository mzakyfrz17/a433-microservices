#!/bin/bash

# melakukan build dari dockerfile
docker build -t item-app:v1 .

# cek list docker images yang ada
docker images

# push docker images ke docker hub
cat ../dockerpass.txt | docker login --username mzakyfrz --password-stdin
docker tag item-app:v1 mzakyfrz/item-app:v1
docker push mzakyfrz/item-app:v1