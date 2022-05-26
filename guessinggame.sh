#!/usr/desktop/kachi bash
# File: guessinggame.sh

number_of_files=$(find * -maxdepth 0 -type f | wc -l)


echo "Guess how many files are in the directory"


function check_answer {
    if [[ $1 -gt $number_of_files ]]
    then
        echo "oops, thats a greater number. Please, try again"
    elif [[ $1 -lt $number_of_files ]]
    then
        echo "thats too low my friend, try again..."
    else
        echo "Congratulations! You are correct!!!"
    fi
}


while [[ ! $user_guess -eq $number_of_files ]] 
do
    read user_guess
    
    check_answer $user_guess
done
