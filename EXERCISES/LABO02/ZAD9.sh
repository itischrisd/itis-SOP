#!/bin/bash

# Wczytanie danych z klawiatury
read -r A
echo "Podales wartosc: $A"

# Operacje arytmetyczne
B=$((A + 1))
B=$((A + 1))
let B=A+1
B=$(expr $A + 1)
B=$(expr $A + 1)

echo "Wynik operacji arytmetycznych: $B"

if [ "$A" -gt "$B" ]; then
  echo "$A jest większe od $B"
else
  echo "$A jest mniejsze lub równe $B"
fi

if [ ! "$A" -ne "$B" ]; then
  echo "$A jest równe $B"
elif [ "$A" -eq "$B" ]; then
  echo "$A jest równe $B"
else
  echo "$A jest różne od $B"
fi

exit 0
