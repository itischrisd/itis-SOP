#!/bin/bash

# Sprawdzenie, czy podano argument (nazwę katalogu)
if [ -z "$1" ]; then
  echo "Błąd: Podaj nazwę katalogu jako pierwszy argument skryptu."
  exit 1
fi

# Nazwa katalogu przekazana jako argument
katalog="$1"

# Sprawdzenie, czy podana zmienna jest poprawną nazwą katalogu
if [ ! -d "$katalog" ]; then
  echo "Błąd: Podany argument nie jest poprawną nazwą katalogu."
  exit 1
fi

# Usunięcie pierwszego argumentu (nazwa katalogu) z listy argumentów
shift

# Inicjalizacja zmiennej do zliczania plików
licznik=0

# Pętla po pozostałych argumentach (rozszerzeniach)
for rozszerzenie in "$@"; do
  # Zliczenie plików o danym rozszerzeniu i dodanie do licznika
  liczba_plikow=$(find "$katalog" -type f -name "*.$rozszerzenie" | wc -l)
  licznik=$((licznik + liczba_plikow))
done

# Wyświetlenie informacji o ilości plików z zadanymi rozszerzeniami
echo "Ilość plików o zadanym rozszerzeniu w katalogu $katalog: $licznik"

exit 0
