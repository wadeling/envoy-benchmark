#!/bin/bash

# fortio server 性能比 envoy 作为static-web server 要差
fortio server -http-port 0.0.0.0:9300
