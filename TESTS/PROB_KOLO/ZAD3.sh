#!/bin/bash

# Wyświetlenie nazw katalogów z co najmniej jednym plikiem do odczytu
for dir in */; do
    if [ -n "$(ls -p "$dir" | grep -v / | grep -w -e '.*')" ]; then
        echo "$dir"
    fi
done

exit 0
