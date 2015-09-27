#!/bin/csh
# file config_starter.sh

source /opt/local/libexec/Geant4/Geant4.10.1/geant4.csh
#root -l 'GenerateGateConfiguration.C( "Coin_Chan.txt" )'
cd /Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor/WebContent/conf/Cylindrical
Gate Coin_Chan.mac
#root -l Coin_Chan.C

