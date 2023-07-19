#!/bin/bash

# Ścieżka do pliku ekg2-current.tar.gz w katalogu domowym
sciezka_do_pliku="$HOME/ekg2-current.tar.gz"

# Kopiowanie pliku do katalogu domowego (jeśli jeszcze tam nie ma)
if [ ! -e "$sciezka_do_pliku" ]; then
  cp /tmp/ekg2-current.tar.gz "$HOME"
fi

# Rozpakowanie archiwum
tar -xzvf "$sciezka_do_pliku" -C "$HOME"

# Przejście do katalogu z rozpakowanymi plikami
cd "$HOME/ekg2-current" || exit

# Usunięcie plików z rozszerzeniem .txt i zliczenie ich oraz sumy linii
ilosc_plikow=$(find . -type f -name "*.txt" | wc -l)
suma_linii=$(find . -type f -name "*.txt" | xargs cat | wc -l)

# Wyświetlenie informacji o ilości plików i sumie linii
echo "Ilość plików z rozszerzeniem .txt: $ilosc_plikow"
echo "Suma linii we wszystkich plikach .txt: $suma_linii"

exit 0
