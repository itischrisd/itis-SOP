#!/bin/bash

# Wczytanie współczynników równania kwadratowego z klawiatury
read -rp "Podaj współczynnik a: " a
read -rp "Podaj współczynnik b: " b
read -rp "Podaj współczynnik c: " c

# Obliczenie delty
delta=$((b * b - 4 * a * c))

# Sprawdzenie, czy delta jest nieujemna (czy istnieją pierwiastki)
if [ $delta -ge 0 ]; then
  # Obliczenie pierwiastków
  x1=$(echo "scale=2; (-$b + sqrt($delta)) / (2*$a)" | bc)
  x2=$(echo "scale=2; (-$b - sqrt($delta)) / (2*$a)" | bc)

  # Wyświetlenie wyników
  echo "Pierwiastek 1: $x1"
  echo "Pierwiastek 2: $x2"
else
  echo "Równanie kwadratowe nie ma pierwiastków rzeczywistych."
fi

exit 0
