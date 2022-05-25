#!/usr/desktop/kachi bash
# File: guessinggame.sh

echo "guess how many files are in the directory then press Enter;Hint:rhymes with "or":"
read response
echo "You entered: $response"

if [[ $response -eq 4 ]]
then
  echo "Congratuilations!! $response is my favorite number"
elif [[ $response -gt 5 ]]
then
  echo "Sorry, $response is a great number"
else
  echo "You entered: $response, not what I was looking for."
fi
