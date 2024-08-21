#!/bin/bash

if [ $# -eq 2 ]; then

        if [ -d $1 ]; then
                x=$(ls $1 -r | wc -l)
                y=$(grep -r $2 $1 | wc -l)
                echo "The number of files are $x and the number of matching lines are $y"
                
                exit 0

	else
		echo "given dir does not exists"
	fi
        exit 1

else 

	echo "failed: Few or more than 2 args passed"
        exit 1

fi 
