#!/bin/bash

HOURS="0"
MIN="0"

function mytimer ()
{

        if [[ "$MIN" -ge "60" ]]
        then ((HOURS++))
                MIN="0"
        fi

        if [[ "$SECONDS" -ge "60" ]]
        then
                ((MIN++))
                SECONDS="0"
        fi
clear
echo "Temps écoulé : $HOURS heures : $MIN minutes : $SECONDS secondes"

}


while :; do
        sleep 1
        mytimer
done


