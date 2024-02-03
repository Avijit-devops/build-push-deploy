#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./lib/x86_64-linux-gnu/

#./lib/x86_64-linux-gnu/utils/FileDecoderr 2 "./etc/niralos/niralos.yaml" "./etc/niralos/niralos_run.yaml" &


./bin/niralos-nrfd -c ./etc/niralos/nrf.yaml -l ./var/log/niralos/niralos.log &
sleep 5
./bin/niralos-scpd -c ./etc/niralos/scp.yaml -l ./var/log/niralos/niralos.log &
./bin/niralos-udrd -c ./etc/niralos/udr.yaml -l ./var/log/niralos/niralos.log &
./bin/niralos-udmd -c ./etc/niralos/udm.yaml -l ./var/log/niralos/niralos.log &
./bin/niralos-ausfd -c ./etc/niralos/ausf.yaml -l ./var/log/niralos/niralos.log &
./bin/niralos-pcfd -c ./etc/niralos/pcf.yaml -l ./var/log/niralos/niralos.log  &
./bin/niralos-bsfd -c ./etc/niralos/bsf.yaml -l ./var/log/niralos/niralos.log  &
./bin/niralos-nssfd -c ./etc/niralos/nssf.yaml -l ./var/log/niralos/niralos.log  &
./bin/niralos-amfd -c ./etc/niralos/amf.yaml -l ./var/log/niralos/niralos.log  &
./bin/niralos-smfd -c ./etc/niralos/smf.yaml -l ./var/log/niralos/niralos.log  &
./bin/niralos-upfd -c ./etc/niralos/upf.yaml -l ./var/log/niralos/niralos.log  &
