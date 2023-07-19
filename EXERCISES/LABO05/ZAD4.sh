#!/bin/bash

# Sprawdzenie, czy podano poprawną liczbę argumentów
if [ $# -ne 2 ]; then
  echo "Użycie: $0 plik_wejsciowy plik_wyjsciowy"
  exit 1
fi

# Przypisanie argumentów do zmiennych
plik_wejsciowy="$1"
plik_wyjsciowy="$2"

# Otwarcie pliku wejściowego do odczytu
while IFS= read -r line; do
  # Podzielenie linii na dwie kolumny
  column1=$(echo "$line" | awk '{print $1}')
  column2=$(echo "$line" | awk '{print $2}')

  # Sprawdzenie, czy obie kolumny zawierają liczby
  if ! [[ $column1 =~ ^[0-9]+$ ]] || ! [[ $column2 =~ ^[0-9]+$ ]]; then
    echo "Niepoprawny format linii: $line" >&2
    continue
  fi

  # Wykonanie operacji matematycznych na parach liczb i zapis wyników do pliku
  echo "$column1 + $column2 = $(expr $column1 + $column2)" >>"$plik_wyjsciowy"
  echo "$column1 - $column2 = $(expr $column1 - $column2)" >>"$plik_wyjsciowy"
  echo "$column1 * $column2 = $(expr $column1 \* $column2)" >>"$plik_wyjsciowy"

  # Sprawdzenie, czy druga liczba jest różna od 0 i wykonanie dzielenia
  if [ "$column2" -ne 0 ]; then
    echo "$column1 / $column2 = $(expr $column1 / $column2)" >>"$plik_wyjsciowy"
  else
    echo "Nie można podzielić przez 0: $column1 / $column2" >&2
  fi

done <"$plik_wejsciowy"

# Wyświetlenie zawartości pliku wyjściowego na ekranie
cat "$plik_wyjsciowy"

exit 0
