#!/bin/bash

curl -X PUT http://localhost:8080/memq/server/queues/keygen

for i in work-item-{0..99}; do
  curl -X POST http://localhost:8080/memq/server/queues/keygen/enqueue -d "$i"
done
