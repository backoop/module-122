#!/bin/bash



zaehleVonBis() {
    sum=0

    # Durch die Zahlen iterieren und die Summe zu berechnen
    for ((i=num1; i<=num2; i++)); do
        sum=$((sum+i))
    done

    # Resultat auf der Konsole ausgeben
    echo "The sum of the numbers between $num1 and $num2 is: $sum"
}

# Hauptprogramm beginnt hier
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Aufrufen der Funktion
zaehleVonBis


