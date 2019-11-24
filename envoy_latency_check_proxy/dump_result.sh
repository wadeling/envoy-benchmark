#!/bin/bash

adminport=9310
savepath=$HOME/projects/

curl -v http://127.0.0.1:$adminport/perf?path=$savepath

