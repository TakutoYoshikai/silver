#!/bin/bash

cd `dirname $0`

pip3 uninstall -y angie-sirius
pip3 uninstall -y phalanx
pip3 uninstall -y esight
pip3 uninstall -y mist-dispersion
pip3 uninstall -y miki

npm uninstall strange

rm -rf gram-demolition
rm -rf nats
rm -rf shiba

