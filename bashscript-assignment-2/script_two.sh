#!/bin/bash

# Author: Ejibode Ibraheem A
# Date Created: 09/03/2024
# Last Modified: 09/03/2024

# Description
# This script creates a backup of a given directory and saves it in another directory with a timestamp. It takes two arguments:the source directory and the destination directory

# usage


if [[ $1 == "-n" && $2 =~ ^[0-9]+$ ]]; then

sudo du -h /var | sort -rh | head -n $2

else

sudo du -h $1 | sort -rh | head -n 8
 
fi