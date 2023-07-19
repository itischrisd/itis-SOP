#!/bin/bash

# Zapytanie użytkownika o numer argumentu
read -rp "Podaj numer argumentu, który chcesz wyświetlić: " numer_argumentu

# Sprawdzenie, czy podano poprawny numer argumentu
if ! [[ "$numer_argumentu" =~ ^[0-9]+$ ]]; then
  echo "Błąd: Podano niepoprawny numer argumentu."
  exit 1
fi

# Przesunięcie argumentów, aby wybrać odpowiedni argument do wyświetlenia
shift $((numer_argumentu - 1))

# Wyświetlenie wybranego argumentu
echo "Argument numer $numer_argumentu: $1"

exit 0
