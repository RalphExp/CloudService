#!/bin/bash

if [ "$1" != "" ]; then
  echo "change replicas to $(($1))";
  microk8s kubectl scale replicasets kuard --replicas=$(($1))
fi
