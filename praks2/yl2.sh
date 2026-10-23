#!/bin/bash
# Skript väljastab praeguse kuupäeva, kellaaja ja kalendri.

echo "Praegune kuupäev:"
date '+%d.%m.%Y'

echo "Praegune kellaaeg:"
date '+%H:%M:%S'

echo "Selle kuu kalender:"
cal
