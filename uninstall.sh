#!/bin/bash

cd `dirname $0`

pip3 uninstall -y angie-sirius
pip3 uninstall -y phalanx
pip3 uninstall -y esight
pip3 uninstall -y mist-dispersion
pip3 uninstall -y miki

npm uninstall -g strange
npm uninstall -g usbenc
npm uninstall -g onmem

rm -rf gram-demolition
rm -rf nats
rm -rf shiba

