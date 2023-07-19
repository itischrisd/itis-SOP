#!/bin/bash

# Funkcja do wyświetlania wiersza tabelki
function print_row() {
  for ((j = 1; j <= 11; j++)); do
    result=$((i * j))
    printf "%5d" $result
  done
  echo
}

# Wyświetlanie tabelki
for ((i = 1; i <= 11; i++)); do
  print_row
done

exit 0
