#! /bin/bash

NUMBER1=$1
NUMBER2=$2
echo "$NUMBER1"
echo "$NUMBER2"

# I need to run a command inside Shell to add 2 numbers

SUM=$(( NUMBER1 + NUMBER2 ))

echo "$SUM is addition"