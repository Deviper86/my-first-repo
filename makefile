
nano makefile

all: project_entry.txt readme.md

project_entry.txt:
  touch project_entry.txt

readme.md: toc.txt
  echo "This project is called 'guessinggame'and contains the following number of entries:" > readme.md
  echo "this project was created on 25-05-2022, at 10:41AM in Lagos, Nigeria.">>readme.md
  echo "This project contains 20 lines of codes">>readme.md
  wc -l toc.txt | egrep -o "[0-9]+" >> readme.md
