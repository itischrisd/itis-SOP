#!/bin/bash

# Sprawdzenie, czy podano katalog jako argument
if [ -z "$1" ]; then
  echo "Błąd: Podaj nazwę katalogu jako argument skryptu."
  exit 1
fi

# Pobranie listy plików z katalogu i zapisanie środkowych linii do pliku wynikowego
for file in "$1"/*.sh; do
  if [ -f "$file" ]; then
    liczba_linii=$(wc -l <"$file")
    srodkowa_linia=$((liczba_linii / 2 + 1))
    cat "$file" | head -n "$srodkowa_linia" | tail -n 1 >>wynik.txt
  fi
done

echo "Pomyślnie zapisano środkowe linie ze skryptów do pliku wynikowego."

exit 0
