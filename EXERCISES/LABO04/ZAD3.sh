#!/bin/bash

# Sprawdzenie, czy podano katalog jako argument
if [ -z "$1" ]; then
  echo "Błąd: Podaj nazwę katalogu jako argument skryptu."
  exit 1
fi

# Przejście do podanego katalogu
cd "$1" || {
  echo "Błąd: Nie można przejść do katalogu $1."
  exit 1
}

# Pobranie listy plików .java i wyświetlenie liczby linii w każdym z nich
for file in *.java; do
  if [ -f "$file" ]; then
    liczba_linii=$(wc -l <"$file")
    echo "Plik: $file, liczba linii: $liczba_linii"
  fi
done

exit 0
