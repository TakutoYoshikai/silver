#!/bin/bash

cd `dirname $0`
function gitclone () {
  git clone https://github.com/TakutoYoshikai/$1.git
}

function pipinstall() {
  pip3 install git+https://github.com/TakutoYoshikai/$1.git
}

pipinstall angie-sirius
pipinstall phalanx
pipinstall elemental-sight
pipinstall mist-dispersion
pipinstall miki

gitclone gram-demolition
gitclone nats
gitclone shiba

cd shiba
./install.sh
cd ..
