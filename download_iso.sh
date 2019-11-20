#!/bin/bash
set -e 
set -x
pushd /mnt/sec-srv3/os-iso
curl https://gist.githubusercontent.com/m2kar/dedb289abe744d09b1ad393313ff073b/raw/5ea4e8f2cee6696461122522d71c27ba0ac1ab3f/iso.list \
| xargs -n2 -P4 -I {} bash -c "wget -c -t 10 -N -o wget.log -P {}"
popd
