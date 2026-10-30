echo "Sisesta arv"
read a
if [ "$a" -gt 100 ]
then
    echo "Arv on suurem kui 100"

    if (( "$a" % 2 == 0 ))
    then
        echo "Arv on paarisarv"
    fi
fi
