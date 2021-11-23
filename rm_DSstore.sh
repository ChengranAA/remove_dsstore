#!/bin/bash

# this script will remove all the .DS_store file in the given directory
NUM_DS=$(find $1 -name ".DS_Store" -type f | wc -l)
if [[ $NUM_DS -eq 0 ]]
then
  echo "There are no .DS_Store file in your directory"
else
  echo "I found these .DS_Store file in your directory"
  find $1 -name ".DS_Store" -type f
  read -p "Do you want to delete them (y/n): "
  while true;
  do
    if [[ $REPLY == "y" ]]
    then
      find $1 -name ".DS_Store" -type f -delete
      echo "Deletion complete"
      break
    elif [[ $REPLY == "n" ]]
    then
      echo "Bye for now..."
      break
    fi
  done
fi
