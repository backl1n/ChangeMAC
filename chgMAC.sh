#!/bin/bash
#!main
echo "------------------------------------------"
echo "changement d'adresse MAC(eth0,wlan0,waln1)"
echo "------------------------------------------"
echo "inteface:"
sudo ifconfig >> ifconfig.txt
echo "----------------------------------------------"
echo "choisir interface"
read interface
echo "----------------------------------------------"
sudo ifconfig $interface down
echo "1 : change aleaoirement les 3 dernier octet(laisse les octets du fabriquant)"
echo "2 : change integralement toute interface "
echo "choisir l'option : "
read option
echo "----------------------------------------------"
#!--------------------------------------------------------
if [[$option = '1']]
then
    echo "choix 1:"
    sudo macchanger -e $interface
elif [[$option = '2']]
    echo "choix 2:"
    echo "nouvelle adresse mac ?(01:02:03:04:05:06)"
    read $adresse_mac
    sudo macchanger --mac=$adresse_mac

else [[$option != '1' || $option != '2']]
    echo "###################"
    echo "error: bad choice"
    echo "###################"

fi 
ifconfig $interface up