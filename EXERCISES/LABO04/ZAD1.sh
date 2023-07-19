#!/bin/bash

# Przygotowanie zmiennej, do której będą dodawane argumenty w odwrotnej kolejności
odwrocone_argumenty=""

# Pętla for dodająca argumenty do zmiennej w odwrotnej kolejności
for arg in "$@"; do
    odwrocone_argumenty="$arg $odwrocone_argumenty"
done

# Wyświetlenie odwróconych argumentów
echo "Odwrotna kolejność argumentów: $odwrocone_argumenty"

exit 0
