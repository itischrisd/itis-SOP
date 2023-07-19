#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "Musisz podać minimum 1 argument."
  exit 1
fi

for katalog in "$@"; do
  if [ ! -d "$katalog" ]; then
    echo "Jeden z argumentów nie jest katalogiem: $katalog"
    exit 1
  fi

  for plik in "$katalog"/*; do
    if [ -f "$plik" ]; then
      liczba_linii=$(wc -l <"$plik")
      srodkowa_linia=$((liczba_linii / 2 + 1))
      srodkowa_tresc=$(head -n "$srodkowa_linia" "$plik" | tail -n 1)
      echo "$(echo "$srodkowa_tresc" | wc -m)"
    fi
  done
done

exit 0
