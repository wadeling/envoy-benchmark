#!/bin/bash

#cp newest envoy

#cp -af ~/go/src/github.com/wadeling/envoy/bazel-bin/source/exe/envoy-static ./

#start

# official envoy
/usr/bin/envoy -c config.yaml -l critical
#/usr/bin/envoy -c config.yaml -l trace
