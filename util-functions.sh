#!/bin/bash

# Functions to be used elsewhere

# modprompt()
# Ask user if we should run a given script.
# First arg is the human-friendly name for the submodule; Second arg is the path to the script.
modprompt() {
  printf "Run $1 setup? [y/n] "
  read answer
  if [ $answer = 'y' ]; then
    $2
  fi
}

export -f modprompt
