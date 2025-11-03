#!/bin/bash

curl -s https://learn.zone01kisumu.ke/assets/devops-branch/HeadTail.txt \
    | { head -1; tail -1; printf "\n"; }