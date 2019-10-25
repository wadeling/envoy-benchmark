#!/bin/bash

# 240s not finish all calls
#fortio load -c 60 -t 240s -qps 60000 http://10.144.72.92:9211


# not finish
#fortio load -c 40 -t 240s -qps 40000 http://10.144.72.92:9211

# all pass
fortio load -c 30 -t 240s -qps 30000 http://10.144.72.92:9211

#
#fortio load -c 1 -t 240s -qps 1000 http://10.144.72.92:9211


#### test fortio http server ####
#fortio load -c 30 -t 240s -qps 30000 http://10.144.72.92:9300

