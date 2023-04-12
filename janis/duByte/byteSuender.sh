#!/bin/bash

# Überprüfen, ob das Verzeichnis als Parameter übergeben wurde
if [[ $# -eq 0 ]]; then
    echo "Bitte geben Sie das Verzeichnis als Parameter an."
    echo "Verwendung: ./list_largest_files.sh /path/to/directory"
    exit 1
fi

# Verzeichniswechsel zum angegebenen Verzeichnis
cd "$1" || exit 1

# Summe der Größe aller Dateien in Bytes
total_size=$(find . -maxdepth 1 -type f -print0 | du --files0-from=- -bc | awk '/total/{print $1}')

# Ausgabe der Summe der Größe aller Dateien
echo "Die Summe der Größe aller Dateien in $1 beträgt: $total_size Bytes"

# Auflistung der drei größten Dateien
find . -maxdepth 1 -type f -print0 | du --files0-from=- -bc | sort -n | tail -3 | awk '{print $2 ": " $1 " Bytes"}'
