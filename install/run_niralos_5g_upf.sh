#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./lib/x86_64-linux-gnu/

./bin/niralos-upfd -c ./etc/niralos/upf.yaml -l ./var/log/niralos/niralos.log  &
