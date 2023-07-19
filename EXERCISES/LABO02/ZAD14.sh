#!/bin/bash

# Wyświetlenie urządzeń blokowych z katalogu /dev
echo "Urządzenia blokowe w /dev:"
ls -l /dev | grep '^b'

# Wyświetlenie urządzeń, które na końcu nazwy mają cyfrę lub dwie cyfry
echo -e "\nUrządzenia z cyfrą lub dwiema cyframi na końcu nazwy:"
ls /dev | grep '[0-9]\{1,2\}$'

# Wyświetlenie urządzeń, które są blokowe i na końcu nazwy mają cyfrę lub dwie cyfry
echo -e "\nUrządzenia blokowe z cyfrą lub dwiema cyframi na końcu nazwy:"
ls -l /dev | grep '^b.*[0-9]\{1,2\}$'

# Wyświetlenie urządzeń, które mają dokładnie 3 dowolne znaki w nazwie
echo -e "\nUrządzenia z dokładnie 3 dowolnymi znakami w nazwie:"
ls /dev | grep '^...$'

# Wyświetlenie urządzeń, które mają nie więcej niż 3 dowolne znaki w nazwie
echo -e "\nUrządzenia z nie więcej niż 3 dowolnymi znakami w nazwie:"
ls /dev | grep '^.\{1,3\}$'

exit 0
