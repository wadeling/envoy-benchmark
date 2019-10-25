#!/bin/bash

# fortio server 性能比 envoy 作为static-web server 要差
fortio server -http-port 10.144.72.92:9300
