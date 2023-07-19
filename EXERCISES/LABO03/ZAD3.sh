#!/bin/bash

# Sprawdzenie, czy podano argument (nazwę katalogu)
if [ -z "$1" ]; then
  echo "Błąd: Podaj nazwę katalogu jako argument skryptu."
  exit 1
fi

# Nazwa katalogu przekazana jako argument
katalog="$1"

# Sprawdzenie, czy podana zmienna jest poprawną nazwą katalogu
if [ ! -d "$katalog" ]; then
  echo "Błąd: Podany argument nie jest poprawną nazwą katalogu."
  exit 1
fi

# Policzenie ilości katalogów i podkatalogów
ilosc_katalogow=$(find "$katalog" -type d | wc -l)

# Wyświetlenie informacji o ilości katalogów i podkatalogów
echo "Ilość katalogów i podkatalogów w katalogu $katalog: $ilosc_katalogow"

exit 0
