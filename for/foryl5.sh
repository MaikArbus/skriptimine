#!/bin/bash
#Muutuja IFS määrab, milliste sümbolite järgi string jagatakse.
#Vaikimisi: tühik, tabulaator ja reavahetus.

text="koer,kass,hiir"
IFS=','   # eraldajaks koma
for word in $text; do
    echo "Sõna: $word"
done
