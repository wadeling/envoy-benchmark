#!/bin/bash

echo "pwd: $PWD"

docker run --name envoy_official -p9211:9211 -v $PWD:/root/config getenvoy/envoy:stable -c /root/config/config.yaml
