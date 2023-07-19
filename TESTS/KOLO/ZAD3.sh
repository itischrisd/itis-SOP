#!/bin/bash

# Sprawdzenie ilości argumentów
if [ "$#" -ne 2 ]; then
  echo "Użycie: $0 plik_wejsciowy plik_wyjsciowy"
  exit 1
fi

# Sprawdzenie czy plik_wejsciowy jest dostępny do odczytu
if [ ! -r "$1" ]; then
  echo "Nie można odczytać pliku $1 lub brak uprawnień do odczytu."
  exit 1
fi

# Sprawdzenie czy plik_wyjsciowy jest dostępny do zapisu
touch "$2" 2>/dev/null

if [ $? -ne 0 ]; then
  echo "Nie można utworzyć pliku $2 lub brak uprawnień do zapisu."
  exit 1
fi

# Znalezienie maksymalnej ilości słów w linii
MAX=0

while IFS=" " read -r linia; do
  liczba_slow=0
  for slowo in $linia; do
    liczba_slow=$((liczba_slow+1))
  done
  if [ $liczba_slow -gt $MAX ]; then
    MAX=$liczba_slow
  fi
done < "$1"

# Wyświetlenie informacji o maksymalnej ilości słów w linii
echo "Maksymalna ilość słów w linii: $MAX"

# Zapisywanie słów z odpowiednich pozycji do pliku_wyjsciowego
while IFS=" " read -r linia; do
  numer_slowa=1
  for slowo in $linia; do
    if [ $numer_slowa -eq $MAX ]; then
      echo -n "$slowo " >> "$2"
    fi
    numer_slowa=$((numer_slowa+1))
  done
  echo "" >> "$2"
done < "$1"

# Zakończenie skryptu
echo "Operacja zakończona powodzeniem. Wynik zapisano w pliku $2."

exit 0
