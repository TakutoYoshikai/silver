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

function cargoinstall() {
  cargo install --git https://github.com/TakutoYoshikai/$1.git
}

pipinstall angie-sirius &
pipinstall phalanx &
pipinstall elemental-sight &
pipinstall mist-dispersion &
pipinstall miki &

wait

npminstall strange
npminstall usbenc
npminstall onmem

cargoinstall nats

gitclone gram-demolition &
gitclone shiba &
gitclone mkcapsule &
gitclone mktcapsule &

wait

cd shiba
./install.sh
cd ..

cd mkcapsule
./install.sh
cd ..

cd mktcapsule
./install.sh
cd ..

echo add below in .bash_profile
echo export PATH=\$PATH:`pwd`/shiba/bin
echo export PATH=\$PATH:`pwd`/mkcapsule/bin
echo export PATH=\$PATH:`pwd`/mktcapsule/bin
