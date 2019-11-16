#!/bin/bash

# 240s not finish all calls
#fortio load -c 60 -t 240s -qps 60000 http://127.0.0.1:9211


# not finish
#fortio load -c 40 -t 240s -qps 40000 http://127.0.0.1:9211

# all pass
#fortio load -c 30 -t 240s -qps 30000 http://127.0.0.1:9211

#
#fortio load -c 1 -t 240s -qps 1000 http://127.0.0.1:9211


#### test fortio http server ####
#fortio load -c 30 -t 240s -qps 30000 http://127.0.0.1:9300

### istio test withoud payload ###
#fortio load -c 16 -t 240s -qps 16000 http://127.0.0.1:9211
#add envoy proxy
#fortio load -c 16 -t 240s -qps 16000 http://127.0.0.1:9210

## payload test, read eof error with payload
#fortio load -c 1 -n 10 -maxpayloadsizekb 1500 -payload-size 1000 http://127.0.0.1:9211

#nginx proxy
#fortio load -c 16 -t 240s -qps 16000 http://127.0.0.1:4545

# x-id test
fortio load -c 1 -n 1 -H "x-id:1" http://127.0.0.1:9210
