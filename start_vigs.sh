#!/bin/bash

export PERL5LIB=/home/production/perl5/lib/perl5

cd /home/production/VIGS

mkdir /tmp/vigs

screen perl script/vigs_server.pl -r --fork
