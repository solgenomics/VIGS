#!/bin/bash

cd /home/VIGS

script/vigs_server.pl --fork -d -r -p 8088


tail -f /home/VIGS/vigs.conf
