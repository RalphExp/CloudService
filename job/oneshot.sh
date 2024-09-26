#!/bin/bash

microk8s kubectl run -i oneshot \
  --image=kuard:local \
  --restart=OnFailure \
  -- --keygen-enable \
  --keygen-exit-on-complete \
  --keygen-num-to-gen 10
