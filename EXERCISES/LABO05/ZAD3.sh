#!/bin/bash

# Sprawdzenie, czy podano argumenty
if [ $# -lt 1 ]; then
  echo "Podaj nazwę katalogu jako argument."
  exit 1
fi

# Sprawdzenie, czy pierwszy argument jest katalogiem
if [ ! -d "$1" ]; then
  echo "$1 nie jest nazwą katalogu."
  exit 1
fi

# Wyświetlenie katalogu wraz z podkatalogami i obliczenie rozmiaru
du -h "$1"

# Sprawdzenie, czy podano drugi argument (nazwę pliku)
if [ $# -lt 2 ]; then
  exit 0
fi

# Wyszukanie plików z atrybutem wykonywania dla właściciela
find "$1" -type f -perm -u=x >"$2"

exit 0
