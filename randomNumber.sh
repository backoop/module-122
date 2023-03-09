#!/bin/bash

# Generate random number between 0 and 20
number=$((RANDOM % 21))

# Initialize guess variable
guess=-1

# Loop until user guesses correctly
while [ $guess -ne $number ]
do
  # Prompt user to guess the number
  read -p "Guess a number between 0 and 20: " guess

  # Check if guess is valid
  if ! [[ $guess =~ ^[0-9]+$ ]]
  then
    echo "Invalid input! Please enter a number."
    continue
  fi

  # Check if guess is correct
  if [ $guess -eq $number ]
  then
    echo "Congratulations! You guessed the number!"
  elif [ $guess -lt $number ]
  then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done
