#!/bin/bash

# Wypisanie nazw katalogów z katalogu głównego (/), które zaczynają się od liter b, e lub c
ls -d /[bec]* 2>/dev/null

exit 0
