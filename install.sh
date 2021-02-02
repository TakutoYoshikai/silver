#!/bin/bash

cd `dirname $0`
function gitclone () {
  git clone https://github.com/TakutoYoshikai/$1.git
}

function pipinstall() {
  pip3 install git+https://github.com/TakutoYoshikai/$1.git
}

function npminstall() {
  npm install -g TakutoYoshikai/$1
}

pipinstall angie-sirius &
pipinstall phalanx &
pipinstall elemental-sight &
pipinstall mist-dispersion &
pipinstall miki &

wait

npminstall strange

gitclone gram-demolition &
gitclone nats &
gitclone shiba &

wait

cd shiba
./install.sh
cd ..

echo add below in .bash_profile
echo export PATH=\$PATH:`pwd`/shiba/bin
