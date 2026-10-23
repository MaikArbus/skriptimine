#!/bin/bash
# Tervitab kasutajat suure algustähega nimega.

kasutaja=$(whoami)
kasutaja=$(echo "$kasutaja" | sed 's/./\U&/')

echo "Tere, ${kasutaja}!"
