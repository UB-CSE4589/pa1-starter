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

if [ -d "./src" ]; 
then
    echo "Directory with given src exists"
else
    echo "No directory named src found. Try again!"
    exit 0
fi

echo "Verifying contents ..."

echo
echo "Main Python script: "
FILE=`find ./src/ -name "assignment1.py"`
if [ -n "$FILE" ];
then
    echo "File $FILE exists"
else
    echo "Missing main Python file named assignment1.py!"
    exit 0
fi

echo
echo "Packaging ..."
cd src/ && tar --exclude='./logs' --exclude='./__pycache__' -zcvf ../${ubitname}_pa1.tar * && cd ..
echo "Done!"
echo
echo "!!!IMPORTANT: Your submission is NOT done!!!"
echo "Please follow the instructions on Piazza to submit your assignment."