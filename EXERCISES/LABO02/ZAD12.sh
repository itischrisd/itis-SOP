#!/bin/bash

# Wyświetlenie zawartości katalogu /bin
ls -F /bin

# Obliczenie liczby wszystkich plików i katalogów w /bin
LICZBA_WSZYSTKICH=$(find /bin -mindepth 1 | wc -l)

# Obliczenie liczby plików w /bin
LICZBA_PLIKOW=$(find /bin -maxdepth 1 -type f | wc -l)

# Obliczenie ilości katalogów w /bin
ILOSC_KATALOGOW=$(find /bin -maxdepth 1 -type d | wc -l)

# Wyświetlenie wyników
echo "Liczba wszystkich plików i katalogów w /bin: $LICZBA_WSZYSTKICH"
echo "Liczba plików w /bin: $LICZBA_PLIKOW"
echo "Ilość katalogów w /bin: $ILOSC_KATALOGOW"

exit 0
