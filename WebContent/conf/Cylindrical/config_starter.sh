#!/bin/csh
# file config_starter.sh
echo 123
source /opt/local/libexec/Geant4/Geant4.10.1/geant4.csh
#/opt/local/bin/root -l 'GenerateGateConfiguration.C( "Coin_Chan.txt" )'
cd /Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor/WebContent/conf/Cylindrical
/opt/local/bin/Gate /Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor/WebContent/conf/Cylindrical/Coin_Chan.mac
#root -l Coin_Chan.C