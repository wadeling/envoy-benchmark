#!/bin/bash

#ab -n 1000000 -c 60 -p ./post_data 'http://10.144.72.92:9211/'
ab -n 1000000 -c 100  'http://10.144.72.92:9211/'
#ab -t 120 -c 1  'http://10.144.72.92:9211/'
