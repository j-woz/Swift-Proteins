#!/bin/bash
set -eu

# RUN THETA LOGIN

PATH=/home/wozniak/Public/sfw/x86_64/login/swift-t-conda/stc/bin:$PATH

nice swift-t $*
