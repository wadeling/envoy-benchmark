#!/bin/bash

#cp newest envoy

cp -af ~/go/src/github.com/wadeling/envoy/bazel-bin/source/exe/envoy-static ./

#start

# mydev envoy
./envoy-static  -c config.yaml --concurrency 1 -l critical --base-id 1
#./envoy-static  -c config.yaml --concurrency 2 -l trace --base-id 1
#./envoy-static -c config.yaml -l trace


# perf
#perf stat -e cache-misses "/usr/bin/envoy -c config.yaml --concurrency 6 -l critical --base-id 1"
