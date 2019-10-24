#!/bin/bash

# rate 意思是说隔多久发起一个连接
#http_load -parallel 5 -rate 1000 -seconds 20 envoy_official_url

http_load -parallel 5  -seconds 20 envoy_official_url
