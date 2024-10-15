# By Marwane, Ronan, Ilias, Taïm

while :; do
    printf "\e[%d;%dH\e[48;5;%dm \e[0m" $(($RANDOM%$LINES)) $(($RANDOM%$COLUMNS)) $(($RANDOM%216))
done
