#!/bin/bash
# Skript tervitab kasutajat ja väljastab tema kasutajanime.

echo -n "Tere, "
kasutaja=$(whoami)
echo -n "$kasutaja"
echo "!"
