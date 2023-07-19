#!/bin/bash

for file in "$@"; do
    if [ -f "$file" ] && grep -qE '(^|[\s.,])CPU([\s.,]|$)' "$file"; then
        echo "$file"
    fi
done

exit 0
