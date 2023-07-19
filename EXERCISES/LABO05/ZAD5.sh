#!/bin/bash

# Sprawdzenie, czy podano nazwę pliku jako argument
if [ $# -lt 2 ]; then
  echo "Użycie: $0 opcja plik_wejsciowy"
  exit 1
fi

# Przypisanie opcji do zmiennej
opcja="$1"
plik_wejsciowy="$2"

# Funkcja do obliczania sumy
function oblicz_sume() {
  local suma=0
  while read -ra liczby; do
    for liczba in "${liczby[@]}"; do
      if ! [[ $liczba =~ ^[0-9]+$ ]]; then
        echo "Błąd: $liczba nie jest liczbą" >&2
      else
        suma=$((suma + liczba))
      fi
    done
  done <"$plik_wejsciowy"
  echo "Suma: $suma"
}

# Funkcja do obliczania iloczynu
function oblicz_iloczyn() {
  local iloczyn=1
  while read -ra liczby; do
    for liczba in "${liczby[@]}"; do
      if ! [[ $liczba =~ ^[0-9]+$ ]]; then
        echo "Błąd: $liczba nie jest liczbą" >&2
      else
        iloczyn=$((iloczyn * liczba))
      fi
    done
  done <"$plik_wejsciowy"
  echo "Iloczyn: $iloczyn"
}

# Wywołanie funkcji w zależności od podanej opcji
if [ "$opcja" == "-s" ]; then
  oblicz_sume
elif [ "$opcja" == "-i" ]; then
  oblicz_iloczyn
else
  echo "Niepoprawna opcja. Użyj -s (suma) lub -i (iloczyn)"
fi

exit 0
