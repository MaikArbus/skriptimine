#!/bin/bash

while true; do
  read -p "Sisesta number (0 lõpetab): " arv

  if [[ $arv -eq 0 ]]; then
    echo "Programm lõpetatud."
    break
  fi

  if [[ $arv -lt 0 ]]; then
    echo "Negatiivne arv, jätan vahele."
    continue
  fi

  echo "Sisestatud number: $arv"
done
