#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Podaj nazwę pliku jako argument skryptu."
  exit 1
fi

plik=$1
cyfry=0
litery=0

while IFS= read -r line; do
  for word in $line; do
    cyfry=$(expr $cyfry + $(expr length "$word" : '[0-9]'))
    litery=$(expr $litery + $(expr length "$word" : '[A-Za-z]'))
  done
done <"$plik"

echo "Plik $plik zawiera $cyfry cyfr oraz $litery liter."

exit 0
