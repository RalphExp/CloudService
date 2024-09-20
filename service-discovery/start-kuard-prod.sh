#!/bin/bash

echo "creating deployment ..."
# create deployment kuard with 2 replicas
microk8s kubectl create deployment kuard \
    --image=kuard:local \
    --port=8080 \
    --replicas=2

# expose the deployment
microk8s kubectl expose deployment kuard
echo "done"

