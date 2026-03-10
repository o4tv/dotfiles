#!/bin/bash

data=$("$HOME/.local/bin/positivo" show @0 --json)

brightness=$(echo "$data" | jq '.brightness')
is_on=$(echo "$data" | jq '.is_on')
ret

if [ "$is_on" = "true" ]; then
    ret=" ${brightness}%"
else
    ret=" off"
fi

echo "$ret"
