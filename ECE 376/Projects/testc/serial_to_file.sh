#!/bin/bash
while true
do
    sudo cat /dev/ttyUSB0 >> ./serial.log
done
