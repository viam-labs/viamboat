#!/bin/bash

/sbin/ifconfig can0 || /sbin/ip link set can0 up type can bitrate 250000
