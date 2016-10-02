#!/bin/bash

[ ! -e tcmu-runner ] && git clone https://github.com/kitwestneat/tcmu-runner.git

cd tcmu-runner
cmake -DCMAKE_INSTALL_PREFIX=/usr -Dwith-glfs=false -Dwith-qcow=false -D SUPPORT_SYSTEMD=true . 
make
mkdir /buildroot
make DESTDIR=/buildroot install
tar cvz -C /buildroot -f /tcmu-runner/tcmu-runner.tar.gz .
