#!/bin/bash

# Ścieżka do katalogu domowego na dysku Z
sciezka="/mnt/z/Users/s25692"

# Inicjalizacja liczników
licznik_java=0
licznik_class=0

# Pętla przeszukująca katalog domowy na dysku Z
find "$sciezka" -type f -name "*.java" | while read -r plik; do
  licznik_java=$((licznik_java + 1))
done

find "$sciezka" -type f -name "*.class" | while read -r plik; do
  licznik_class=$((licznik_class + 1))
done

# Obliczenie różnicy między liczbą plików .java a .class
roznica=$((licznik_java - licznik_class))

# Wyświetlenie wyników
echo "Liczba plików .java: $licznik_java"
echo "Liczba plików .class: $licznik_class"
echo "Różnica: $roznica"

exit 0
