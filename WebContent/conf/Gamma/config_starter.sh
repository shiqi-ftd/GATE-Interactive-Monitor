#!/bin/csh
# file config_starter70.sh

source /opt/local/libexec/Geant4/Geant4.10.1/geant4.csh

root -l 'GenerateGateConfiguration.C( "Gamma_Camera.txt" )'
Gate Gamma_Camera.mac
#root -l Gamma_Camera.C
