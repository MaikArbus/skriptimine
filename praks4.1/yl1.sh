#!/bin/bash
#skript mis küsib ühte täisarvu ning väljastab seltava kirjelduse
#Kas tegemist on paaris või paaritu arvuga.

echo -n "Sisesta suvaline täisarv:"
read arv
jaak=$(( $arv % 2 ))
	if [ $jaak -eq 0 ]
then
	echo "$arv on paaris"
else
	echo "$arv on paaritu"
fi
