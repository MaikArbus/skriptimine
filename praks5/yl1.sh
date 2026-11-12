#!/bin/bash

#skript mis küsib sinu vanust ning kategoriseerib kas oled laps, nooruk, täiskasvanu või vanur
#skriptis -a kasutatakse ja ehk and-ina ehk vanus peab olema üle 0 ja alla 11 näiteks.
#analoog sellele on -o mis tähendab or ehk või
echo "Sisesta oma vanus:"
read vanus
	if test $vanus -gt 0 -a $vanus -lt 11
then
	echo "oled laps"
elif test $vanus -ge 11 -a $vanus -lt 18
then
	echo "oled nooruk"
elif test $vanus -ge 18 -a $vanus -lt 63
then
	echo "oled täiskasvanu"
elif test $vanus -ge 63
then
	echo "oled vanur"
else
	echo "vigane sisend"
fi
