#!/bin/bash
id=$(id -u)
if [ $id -ne 0 ]
then
    echo "Please try with Root"
fi
validate() {
    if [ $1 -ne 0 ]
    then    
        echo "$2 is failed"
    else
        echo "$2 is sucess"
}
for i in $@ # all args passed to script
do
    echo $i
done