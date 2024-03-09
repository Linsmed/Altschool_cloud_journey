#!/bin/bash

# Author: Ejibode Ibraheem A
# Date Created: 09/03/2024
# Last Modified: 09/03/2024

# Description
# A shell script that checks the disk usage in a given directory,the script can take two optional arguments and one compulsory argument.

# usage
#


#du -d 5 -h /etc | sort -hr | head -5
#diskusage.sh -n /etc

directory=$@
number_of_files=$(ls -l "$directory" | grep -c "^")
#echo $directory


# if [[ $1 == '-d' ]]; then
#   dir_files=true
#   shift 1
# fi

if [[ $1 == '-n' && $2=~^[0-9]+$ ]]; then

    sudo du -h $3 | sort -hr | head -$2

    echo "if"

elif [[ $1 == '-d' ]]; then

    sudo du -ah $2 | sort -hr | head -8
    echo "elif"

else

    sudo du -h $1 | sort -hr | head -8

    echo "else"

fi