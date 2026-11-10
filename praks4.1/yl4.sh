
#!/bin/bash
# Skript kontrollib, kas etteantud täisarv on paaris või paaritu.

if [ "$#" -ne 1 ]; then
    echo "Kaivita see skript koos arvuga mille paarsus soovid kontrollida. Näiteks: ./yl4.sh ..."
    exit 1
fi

arv=$1
jaak=$((arv % 2))

if [ "$jaak" -eq 0 ]; then
    echo "Antud arv on paaris"
else
    echo "Antud arv on paaritu"
fi

