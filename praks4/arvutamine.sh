echo -n "sisesta esimene arv"
read a
echo -n "sisesta teine arv"
read b
if [ "$a" -eq "$b" ]
then
 echo "Arvud on võrdesed!! loogiline ju"
fi

# -eq tahendab võrdne
# -ne ei ole võrdne
# -gt suurem kui
# -lt väikesem kui
# -ge suurem või võrdne
# -le väiksem või võrdne
