#!/bin/bash

echo "creating deployment ..."
# create deployment kuard with 2 replicas
microk8s kubectl create deployment kuard \
    --image=kuard:local \
    --port=8080 \
    --replicas=2

if [ $? == 0 ]; then
# expose the deployment
    microk8s kubectl expose deployment kuard
else
    exit 1;
fi

if [ $? == 0 ]; then
  echo "done"
fi

