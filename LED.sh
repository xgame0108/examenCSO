#!/bin/bash
# Initialisation des GPIOs. Les GPIOs nécessaires sont activés avec la commande export, puis la direction est choisie.

DIR="/sys/class/gpio/gpio71"
if [ ! -d $dir ]; then #verifie si ports non actifs
echo "71" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio71/direction #del en sortie

echo "233" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio233/direction #bouton en entree
fi

while : 
do
if [ $(cat /sys/class/gpio/gpio233/value) -eq 0 ];
	then 
		echo "1" > /sys/class/gpio/gpio71/value #DEL allume si bouton non enfonce
	else
		echo "0" > /sys/class/gpio/gpio71/value #DEL eteint si bouton enfonce
fi
done
