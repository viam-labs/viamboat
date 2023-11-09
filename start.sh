#!/bin/bash

candump -n 10 can0 || /sbin/ip link set can0 up type can bitrate 250000

./bin/viamboatmodule "$@"
