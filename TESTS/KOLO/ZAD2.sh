#!/bin/bash

# Sprawdzenie ilości argumentów
if [ "$#" -ne 3 ]; then
  echo "Użycie: $0 plik_wejsciowy1 plik_wejsciowy2 plik_wyjsciowy"
  exit 1
fi

# Sprawdzenie czy plik_wejsciowy1 jest dostępny do odczytu
if [ ! -r "$1" ]; then
  echo "Nie można odczytać pliku $1 lub brak uprawnień do odczytu."
  exit 1
fi

# Sprawdzenie czy plik_wejsciowy2 jest dostępny do odczytu
if [ ! -r "$2" ]; then
  echo "Nie można odczytać pliku $2 lub brak uprawnień do odczytu."
  exit 1
fi

# Sprawdzenie czy plik_wyjsciowy jest dostępny do zapisu
if [ ! -w "$3" ]; then
  echo "Nie można zapisać do pliku $3 lub brak uprawnień do zapisu."
  exit 1
fi

# Porównywanie zawartości plików i zapisywanie unikalnych linii do pliku_wyjsciowego
for linia1 in $(cat "$1"); do
  wystapienie=0
  for linia2 in $(cat "$2"); do
    if [ "$linia1" != "$linia2" ]; then
      wystapienie=$((wystapienie + 1))
    fi
  done
  if [ "$wystapienie" -eq $(cat "$2" | wc -l) ]; then
    echo "$linia1" >>"$3"
  fi
done

# Zakończenie skryptu
echo "Operacja zakończona powodzeniem. Wynik zapisano w pliku $3."

exit 0
