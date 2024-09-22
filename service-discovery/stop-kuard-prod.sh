#!/bin/bash

echo "deleting kuard..."
microk8s kubectl delete services,deployments kuard && \
microk8s kubectl delete services,deployments kuard2

if [ $? == 0 ]; then
  echo "done"
fi

