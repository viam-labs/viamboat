
Running Locally
====
```
make sample
```
http://127.0.0.1:8081/


Using as a module
====

1) sudo bash picansetup.bash

2) reboot

3) add viamboat module to a robot

4) setup movement sensor
```
    {
      "name": "garmingps",
      "type": "movement_sensor",
      "model": "boat-movement",
      "attributes": {
        "reader": "/Users/erh/work/viamboat/data/sample.json"
      },
      "depends_on": []
    }

```

* setup all pgn sensor
```
    {
      "name": "all-nema",
      "type": "sensor",
      "model": "boat-all-pgn",
      "attributes": {
        "reader": "/Users/erh/work/viamboat/data/sample.json"
      },
      "depends_on": []
    }
```

* setup any individual sensor for a pgn/src
```
    {
      "name": "water",
      "type": "sensor",
      "model": "boat-sensor",
      "attributes": {
        "reader": "/Users/erh/work/viamboat/data/sample.json",
        "pgn": 127505,
        "src": 88
      },
      "depends_on": []
    }
```

Local Development
====
https://copperhilltech.com/pican-m-nmea-0183-nmea-2000-hat-for-raspberry-pi/

1) sudo bash picansetup.bash

2) reboot

3) sudo /sbin/ip link set can0 up type can bitrate 250000

3) sudo apt install can-utils git make gcc xsltproc python3-venv python3-dev

4) install canboat
```
git clone http://github.com/canboat/canboat
cd canboat
make
make install
```


Building notes
====
```
sudo apt install libjpeg62-turbo-dev
```

deploying notes
====
```
viam module upload --version <version> --platform linux/arm64 module.tar.gz

```
