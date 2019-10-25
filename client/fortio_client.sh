#!/bin/bash

fortio load -c 60 -t 240s -qps 1000 http://10.144.72.92:9211
