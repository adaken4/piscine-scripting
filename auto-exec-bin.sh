#!/bin/bash

mkdir -p "$HOME/myBins"

printf 'printf "Hello 01 Scripting Pool\n"' > "$HOME/myBins/01exec"
chomd +x "$HOME/myBins/01exec"

export PATH="$HOME/myBins:$PATH"