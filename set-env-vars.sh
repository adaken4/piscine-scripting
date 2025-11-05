#!/bin/bash

MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142

export MY_MESSAGE MY_NUM MY_PI

printenv | grep -E "MY_MESSAGE|MY_NUM|MY_PI"