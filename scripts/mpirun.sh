#!/bin/bash

CORES=`cat /etc/JARVICE/cores | wc -l`

/usr/local/bin/mpirun -np $CORES -hostfile /etc/JARVICE/nodes $@
