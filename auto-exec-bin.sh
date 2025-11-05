#!/bin/bash

mkdir -p "$HOME/myBins"

printf 'printf "Hello 01 Scripting Pool\n"' > "$HOME/myBins/01exec"
chmod +x "$HOME/myBins/01exec"

export PATH="$HOME/myBins:$PATH"