#!/bin/bash

sub=$1
value=$2

data=$("$HOME/.local/bin/positivo" show @0 --json)
new=$(echo "$data" | jq ".$sub")

if [[ $value =~ ^[+-] ]]; then
    new=$((new + value))
else
    new=$value
fi

if [ "$new" -lt 1 ]; then
    new=1
elif [ "$new" -gt 100 ]; then
    new=100
fi

"$HOME/.local/bin/positivo" "$sub" "$new" @0
