#!/bin/bash

# Wywołanie skrypt1.sh
./ZAD1.sh "$1"

# Sprawdzenie statusu wykonania skryptu1.sh
if [ $? -eq 0 ]; then
  # Liczenie ilości plików i katalogów wygenerowanych przez skrypt1
  ilosc_plikow_katalogow=$(wc -l <PLIK)

  # Wyświetlenie informacji o ilości plików i katalogów
  echo "Ilość plików i katalogów wygenerowanych przez skrypt1: $ilosc_plikow_katalogow"
else
  echo "Błąd: Skrypt1 nie został wykonany poprawnie."
fi

exit 0
