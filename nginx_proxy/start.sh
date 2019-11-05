#!/bin/bash

mkdir -p /usr/share/nginx/log

nginx -c /root/go/src/github.com/wadeling/envoy-benchmark/nginx_proxy/nginx.conf
