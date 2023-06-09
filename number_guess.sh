#!/bin/bash
#number guessing game
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read username

secret_number=$(( RANDOM % 1000 + 1 ))

if [ $username = "Dom" ]
then
echo $secret_number
fi

number_of_guesses=0
guess=0

USER_CHECK=$($PSQL "SELECT username FROM users WHERE username='$username'")

if [[ -z $USER_CHECK ]]
then  
    echo "Welcome, $username! It looks like this is your first time here."
    INSERT_USER=$($PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$username', 0, 999);")
else  
    games_played=$($PSQL "SELECT games_played FROM users WHERE username='$username'")
    best_game=$($PSQL "SELECT best_game FROM users WHERE username='$username'")
    echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

echo "Guess the secret number between 1 and 1000:"
while true
do
    read guess
    if [[ $guess =~ ^[0-9]+$ ]]
    then
        if [ $guess -gt $secret_number ]
        then
            echo "It's lower than that, guess again:"
            number_of_guesses=$(( $number_of_guesses + 1 ))
        elif [ $guess -lt $secret_number ]
        then
            echo "It's higher than that, guess again:"
            number_of_guesses=$(( $number_of_guesses + 1 ))
        elif [ $guess -eq $secret_number ]
        then
            number_of_guesses=$(( $number_of_guesses + 1 ))
            break
        fi
    else
        echo "That is not an integer, guess again:"
    fi
done

echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"

games_played=$(( $games_played + 1 ))

if [ "$best_game" = "NULL" ] || [ -z "$best_game" ] || [ $number_of_guesses -lt $best_game ]
then
    best_game=$number_of_guesses
fi

GAME_FINISHED_UPDATE=$($PSQL "UPDATE users SET games_played = $games_played, best_game = $best_game WHERE username = '$username';")
