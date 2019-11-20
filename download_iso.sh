#!/bin/bash
set -e 
set -x
pushd /mnt/sec-srv3/os-iso
curl https://raw.githubusercontent.com/m2kar/iso_mirror/master/iso.list \
| xargs -n2 -P4 -I {} bash -c "wget -c -t 10 -N -o wget.log -P {}"
popd
