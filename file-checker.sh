#!/bin/bash

if ! [[ -e $1 ]]; then
  echo "File does not exist"
else
  echo "File exists"
  if [[ -r $1 ]]; then
    echo "File is readable"
  else
    echo "File is not readable"
  fi

  if [[ -w $1 ]]; then
    echo "File is writable"
  else
    echo "File is not writable"
  fi

  if [[ -x $1 ]]; then
    echo "File is executable"
  else
    echo "File is not executable"
  fi
fi
