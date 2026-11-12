#!/bin/bash
#
#skript mis kellaaja järgi tervitamine.
#
echo -e "sisesta aja vaartus"
read aeg
# kontrollimine
if [ $aeg -ge 6 -a $aeg -lt 12 ]; then
	echo "Tere hommikust!"
elif [ $aeg -ge 12 -a $aeg -lt 18 ]; then
	echo "Tere päevast"
elif [ $aeg -ge 19 -a $aeg -lt 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
	echo "Head ood!"
else
	echo "Vale sisend"
fi
