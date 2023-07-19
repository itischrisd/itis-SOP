#!/bin/bash

# Sprawdzenie, czy podano argument (nazwę katalogu)
if [ -z "$1" ]; then
  echo "Błąd: Podaj nazwę katalogu jako argument skryptu."
  exit 1
fi

# Nazwa katalogu przekazana jako argument
katalog="$1"

# Wyświetlenie nazw plików z katalogu (bez ścieżki)
echo "Nazwy plików w katalogu $katalog:"
ls -p "$katalog" | grep -v '/'

# Liczenie ilości plików
ilosc_plikow=$(ls -p "$katalog" | grep -v '/' | wc -l)

# Liczenie ilości katalogów
ilosc_katalogow=$(ls -p "$katalog" | grep '/' | wc -l)

# Wyświetlenie informacji o ilości plików i katalogów
echo "Ilość plików: $ilosc_plikow"
echo "Ilość katalogów: $ilosc_katalogow"

# Liczenie ilości plików i katalogów (łącznie)
ilosc_plikow_i_katalogow=$((ilosc_plikow + ilosc_katalogow))

# Wyświetlenie informacji o ilości plików i katalogów (łącznie)
echo "Ilość plików i katalogów (łącznie): $ilosc_plikow_i_katalogow"

exit 0
