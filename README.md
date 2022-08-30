
https://copperhilltech.com/pican-m-nmea-0183-nmea-2000-hat-for-raspberry-pi/

1) sudo vi  /boot/config.txt
```
dtparam=i2c_arm=on
dtparam=spi=on
dtoverlay=mcp2515-can0,oscillator=16000000,interrupt=25
dtoverlay=spi-bcm2835-overlay
```

2) reboot

3) sudo /sbin/ip link set can0 up type can bitrate 250000

3) sudo apt install can-utils git make gcc xsltproc python3-venv python3-dev

4) install canboat
```
git clone git@github.com:canboat/canboat
cd canboat
make
make install
```
