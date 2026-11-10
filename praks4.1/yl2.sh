#!/bin/bash
#
# reisi korraldamine
#
# inimeste andmed
echo -n "Sisesta reisijate arv:"
read reisijad
#kohtade andmed bussis
echo -n "sisesta kohtade arv bussis:"
read kohad
#
#arvutused
#
# jagame inimesed busside vahel nii, et kõik kohad bussides oleks taidetud - sellga
# saame teada, mitu bussi on vaja
bussid=$(($reisijad / $kohad))
# vaatame, palju on need, kes ei saanud kohta bussides - need on yle jaanud reisijad,
# ehk jaagid, kui k6ik kohad on taidetud
ylejaanud=$(($reisijad % $kohad))
#
# kui on olemas ylejaanud tuleb suurendada busside arv 1 v6rra
if test $ylejaanud -gt 0
then
	#bussid muutuja vajab yledefineermist selle parast ymbersalvestamiseks
	# ei kasuta $ marki aga arvutamisel juba kasutame
	bussid=$(($bussid + 1))
fi
# tulemuste valjastamine
echo "kokku on vaja $bussid taisbussi"
