#!/bin/bash

adminport=9310

# 1-on ,0 - off
perf_switch=0

curl -v http://127.0.0.1:$adminport/perf_switch?switch=$perf_switch

