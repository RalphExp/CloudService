#!/bin/bash

microk8s kubectl run alpaca-prod \
    --image=gcr.io/kuar-demo/kuard-amd64:blue \
    --expose=true \
    --port=8080 \
    --labels="ver=1,app=alpaca,env=prod"
