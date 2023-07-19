#!/bin/bash

read -rp "Podaj liczbę: " liczba

if [[ $liczba =~ ^-?[0-9]+(\.[0-9]+)?$ && $(echo "$liczba > 0" | bc -l) -eq 1 ]]; then
  echo "To jest liczba wyłącznie dodatnia."
elif [[ $liczba =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
  echo "To jest liczba dodatnia lub ujemna."
else
  echo "To nie jest liczba wyłącznie dodatnia lub liczba dodatnia lub ujemna."
fi

exit 0
