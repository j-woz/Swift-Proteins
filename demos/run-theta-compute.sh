#!/bin/bash
set -eu

# RUN THETA COMPUTE

PATH=/projects/Candle_ECP/swift/2018-04-25/stc/bin:$PATH

THIS=$( readlink -f $( dirname $0 ) )

# Swift/T output settings
export TURBINE_OUTPUT_ROOT=$THIS/output
export TURBINE_OUTPUT_FORMAT=%Q

# Swift/T scheduler settings
export PROJECT=ecp-testbed-01
export QUEUE=debug-cache-quad
export WALLTIME=00:01:00

# Swift/T library setting (this installation has R)
LD_LIBRARY_PATH=/projects/Candle_ECP/swift/deps/R-3.4.1/lib64/R/lib

# Pack a 2-process job onto 1 node
export PPN=2

swift-t -m theta -e LD_LIBRARY_PATH=$LD_LIBRARY_PATH $*
