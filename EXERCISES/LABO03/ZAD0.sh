#!/bin/bash

# Sprawdzenie, czy skrypt ma uprawnienia do zapisu
if [ -w "$0" ]; then
  echo "Skrypt ma uprawnienia do zapisu. Zabieram uprawnienia..."
  chmod -w "$0"
else
  echo "Skrypt nie ma uprawnień do zapisu. Nadaję uprawnienia..."
  chmod +w "$0"
fi

exit 0
