#!/bin/bash

# Wyświetlenie plików z katalogu /bin zawierających literę "a" w nazwie
echo "Pliki zawierające literę 'a' w nazwie:"
ls /bin | grep 'a'

# Wyświetlenie plików z katalogu /bin, które są do odczytu dla wszystkich
echo -e "\nPliki odczytywalne dla wszystkich:"
ls -l /bin | grep '^...r'

# Wyświetlenie plików z katalogu /bin, które na końcu nazwy mają małą literkę "s" lub "d"
echo -e "\nPliki z literą 's' lub 'd' na końcu nazwy:"
ls /bin | grep 's$'
ls /bin | grep 'd$'

# Wyświetlenie plików z katalogu /bin, które na końcu nazwy mają małą literkę
echo -e "\nPliki z małą literką na końcu nazwy:"
ls /bin | grep '[a-z]$'

exit 0
