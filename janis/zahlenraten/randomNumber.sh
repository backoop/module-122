#!/bin/bash

# Generate random number between 0 and 20
number=$((RANDOM % 21))

# Initialize variables
guess=99
tries=0

# Loop until user guesses correctly
while [ $guess -ne $number ]
do
  # Prompt user to guess the number
  read -p "Guess a number between 0 and 20: " guess

  # Check if guess is valid
  
 if ! [[ "$guess" =~ ^[+-]?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input! Please enter a number."
    guess=99
    continue
  fi
  if [[ "$guess" =~ \. ]]; then
  echo "Invalid input! Please enter a full number."
  guess=99
  continue
  fi 
  if [ $guess -lt 0 ] || [ $guess -gt 20 ]; then
    echo "Invalid input! Please enter a number between 0 and 20."
    continue  
  fi

  # Check if guess is correct
  if [ $guess -eq $number ]
  then
    tries=$((tries + 1))
    if [ $tries -eq 1 ]
    then
      echo "Congratulations! You guessed the number in $tries try!"
    else
      echo "Congratulations! You guessed the number in $tries tries!"
    fi
  elif [ $guess -lt $number ]
  then
  tries=$((tries + 1))
    echo "Your guess is too low. Try again."

  else
  tries=$((tries + 1))
    echo "Your guess is too high. Try again."
  fi
done