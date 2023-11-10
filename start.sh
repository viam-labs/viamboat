#!/bin/bash

candump -n 10 can0 || /sbin/ip link set can0 up type can bitrate 250000

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo $SCRIPT_DIR
$SCRIPT_DIR/bin/viamboatmodule "$@"
