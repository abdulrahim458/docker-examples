#! /bin/bash
if [[ ! -e ./inputFile ]]; then
    touch ./inputFile
fi

RANDOM=$$

num=0

while [[ $[num] -le 9 || $[num] -le $1 ]]
do
   echo $num, $RANDOM >> inputFile

(( num = num + 1 ))
done
echo "Script Executed Successfully. inputFile is created with deafult entries"
