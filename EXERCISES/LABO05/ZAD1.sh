#!/bin/bash

# Sprawdzenie czy podano login użytkownika jako argument
if [ $# -ne 1 ]; then
  echo "Błąd: Podaj login użytkownika jako argument skryptu."
  exit 1
fi

login=$1
licznik=0

while [ $licznik -lt 2 ]; do
  # Znalezienie ilości wystąpień loginu w pliku /var/log/auth.log
  wystapienia=$(grep -c "$login" /var/log/auth.log)

  # Wyświetlenie komunikatu o liczbie wystąpień
  echo "Użytkownik $login zalogował się $wystapienia razy."

  # Sprawdzenie czy użytkownik zalogował się 2-krotnie
  if [ "$wystapienia" -ge 2 ]; then
    echo "Użytkownik $login zalogował się 2-krotnie."
    break
  fi

  # Odczekanie 5 sekund przed kolejnym sprawdzeniem
  sleep 5
done

exit 0
