#!bin/bash

grep spi-bcm2835-overlay /boot/config.txt || printf "dtparam=i2c_arm=on\ndtparam=spi=on\ndtoverlay=mcp2515-can0,oscillator=16000000,interrupt=25\ndtoverlay=spi-bcm2835-overlay\n" >> foo
