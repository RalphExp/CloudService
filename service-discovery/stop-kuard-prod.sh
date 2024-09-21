#!/bin/bash

echo "deleting kuard..."
microk8s kubectl delete services,deployments kuard
if [ $? == 0 ]; then
  echo "done"
fi

