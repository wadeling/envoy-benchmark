#!/bin/bash

#siege --rc=./siege_conf "http://10.144.72.92:9211"

#siege -r 10000 -c 1 -b -f envoy_official_url

#benchmark,no delay
siege -b true  -r 10000 -c 1  http://10.144.72.92:9211

#-d means delay between 0-num
#siege  -d 10 -r 1000 -c 1  http://10.144.72.92:9211

