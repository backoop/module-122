if [ $# -ne 2 ]; then
  echo "Fehler: Es müssen genau zwei Parameter übergeben werden."
  exit 1
fi

echo 'input-file: ' $1
echo 'output-file: ' $2

>"$2"
export LANG=C
grep -E '^2\t' "$1" | grep -v '^2\t26' | cut -f3- | grep -a "^'[A-Z][0-9]\{6\}'" > "$2"




