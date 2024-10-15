# Script from J1

Scripts create by CESI students at the end of there first day (with some helps from google and chatGPT)

* Group 1 : Nathan, Mélissa, Thibaut, Tiphaine
* Group 2 : Anwar, Kévin, Raphael, Vincent
* Group 3 : Ilias, Marwane, Ronan, Taïm

## Import

Don't forget to do a chmod to be able to execute scripts

## Problems

**Error to execute :**

```
damien@SAMSUNG-BOOK-3-PRO:~/CESI/2024-cmd-de-base/edu-cmd-linux/J1-mini-projects$ /home/damien/CESI/2024-cmd-de-base/edu-cmd-linux/J1-mini-projects/jeu_aventure_Kevin_Vincent_Anwar_Raphael.bash
/home/damien/CESI/2024-cmd-de-base/edu-cmd-linux/J1-mini-projects/jeu_aventure_Kevin_Vincent_Anwar_Raphael.bash: 7: Syntax error: Bad for loop variable
```

[Solution founded online](https://stackoverflow.com/questions/14219092/bash-script-bin-bashm-bad-interpreter-no-such-file-or-directory)

This a classic error cause by incompatibilities between windows and linux formatting

Fix : `sed -i -e 's/\r$//' filename`

**Specific error on action-script_Group2**

```
Entrez votre choix (1-7) : 6 OR 7
/home/damien/CESI/2024-cmd-de-base/edu-cmd-linux/J1-mini-projects/script_Group2.sh: line 45: sl: command not found
```

That is happening if command is not installed on user device

Fix : `sudo apt install sl hollywood`
