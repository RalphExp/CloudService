#!/bin/bash

microk8s kubectl create configmap my-conf \
  --from-file=my-conf.txt \
  --from-literal=extra-param=extra-value \
  --from-literal=another-param=another-value
