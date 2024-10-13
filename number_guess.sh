#!/bin/bash

# Database connection
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate random secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Prompt for username
echo "Enter your username:"
read USERNAME

# Check if username exists in the database
USER_DATA=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_DATA ]]; then
  # User does not exist
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # Insert the new user into the database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, 0)")
  GAMES_PLAYED=0
  BEST_GAME=0
else
  # Extract user data
  IFS="|" read USERNAME GAMES_PLAYED BEST_GAME <<< "$USER_DATA"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Initialize variables for the game
GUESSES=0
CORRECT_GUESS=false

# Start the game
echo "Guess the secret number between 1 and 1000:"
while [[ $CORRECT_GUESS == false ]]; do
  read GUESS
  
  # Check if input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
    GUESSES=$(( GUESSES + 1 ))
    if [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    else
      # Correct guess
      echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      CORRECT_GUESS=true
    fi
  fi
done

# Update the user's game statistics
if [[ $BEST_GAME -eq 0 || $GUESSES -lt $BEST_GAME ]]; then
  BEST_GAME=$GUESSES
fi
GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))

# Update the database
UPDATE_USER_RESULT=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE username='$USERNAME'")

