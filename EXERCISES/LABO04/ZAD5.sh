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

# Pobranie liczby od użytkownika
read -rp "Podaj liczbę dodatnią: " liczba

# Sprawdzenie, czy podano dodatnią liczbę
if [ "$liczba" -le 0 ]; then
  echo "Błąd: Podaj liczbę dodatnią."
  exit 1
fi

# Obliczenie silni i wyświetlenie wyniku
wynik=$(silnia "$liczba")
echo "Silnia z $liczba wynosi: $wynik"

exit 0
