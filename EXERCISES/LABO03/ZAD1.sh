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

# Wyświetlenie nazw plików z katalogu, które zaczynają się od kropki i zawierają literkę "b"
ls -A "$katalog" | grep '^\.b' >PLIK

exit 0
