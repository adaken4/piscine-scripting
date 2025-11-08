#!/bin/bash

if [[ "$#" -ne 1 ]]; then
 echo "Error"
 exit 1
fi

if [[ -d $1 ]]; then
  mkdir "$1/mamma" "$1/mi" && chmod 777 "$1/mamma" && chmod 452 "$1/mi";
  touch "$1/ciao" "$1/guarda" "$1/come" "$1/diverto" && chmod 442 "$1/ciao" && chmod 400 "$1/guarda" && chmod 642 "$1/come" && chmod 421 "$1/diverto";
  touch -m -d "2022-01-01 00:01:00" "$1/ciao"
  touch -m -d "2022-01-02 00:01:00" "$1/mamma"    
  touch -m -d "2022-01-03 00:01:00" "$1/guarda"
  touch -m -d "2022-01-04 00:01:00" "$1/come"
  touch -m -d "2022-01-05 00:01:00" "$1/mi"
  touch -m -d "2022-01-06 00:01:00" "$1/diverto"
fi
