#!/bin/bash
       
#Title           :assignment1_package.sh
#description     :This script will package Python assignment for submission.
#Author		     :Ritik Ranjan <ritikran@buffalo.edu>
#Version         :1.0
#===================================================================================================

# https://gist.github.com/davejamesmiller/1965569
function ask {
    while true; do
 
        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi
 
        # Ask the question
        read -p "$1 [$prompt] " REPLY
 
        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi
 
        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
 
    done
}

echo
echo -n "Enter your Github Classroom Team Name and press [ENTER]: "
read ubitname

if [ -d "./pa1" ]; 
then
    echo "Directory with given pa1 exists"
else
    echo "No directory named pa1 found. Try again!"
    exit 0
fi

echo "Verifying contents ..."


echo
echo "Python file with main function: "
FILE=`find ./pa1/src/ -name "assignment1.py"`
if [ -n "$FILE" ];
then
    echo "File $FILE exists"
    if grep -q "if __name__[ ]*==[ ]*['\"]__main__['\"]" $FILE
    then
        echo "File $FILE contains the main function definition"
    else
        echo "File $FILE does NOT contain the main function definition"
        exit 0
    fi
else
    echo "Missing main Python file or file named incorrectly!"
    exit 0
fi

echo
echo "Packaging ..."
cd pa1/ && tar --exclude='./src/logs' --exclude='./src/__pycache__' -zcvf ../${ubitname}_pa1.tar * && cd ..
echo "Done!"
echo
echo "!!!IMPORTANT: Your submission is NOT done!!!"
echo "Please follow the instructions on Piazza to submit your assignment."