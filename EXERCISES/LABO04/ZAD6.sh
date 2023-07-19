#!/bin/bash

# Funkcja do obliczania silni
silnia() {
  local n=$1
  local result=1

  for ((i = 1; i <= n; i++)); do
    result=$((result * i))
  done

  echo "$result"
}

# Pobranie liczb a i b od użytkownika
read -rp "Podaj liczbę a (dodatnią): " a
read -rp "Podaj liczbę b (dodatnią): " b

# Sprawdzenie, czy podano dodatnie liczby a i b
if [ "$a" -le 0 ] || [ "$b" -le 0 ]; then
  echo "Błąd: Podaj dodatnie liczby a i b."
  exit 1
fi

# Wyświetlenie silni od liczby a do liczby b
for ((n = a; n <= b; n++)); do
  wynik=$(silnia "$n")
  echo "Silnia z $n wynosi: $wynik"
done

exit 0
