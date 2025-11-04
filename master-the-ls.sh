#!/bin/bash

ls -tup | grep -v '^\.' | tr '\n' ',' | sed 's/,$//'