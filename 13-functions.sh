#!/bin/bash
root=$(id -u)
if [ $root -ne 0 ]
then
    echo "Please try with Root access"
fi
apt list --installed | grep -i git
if [ $? -ne 0 ]
then    
    echo "Git not available, so installing it"
    apt install git -y
    if [ $? -ne 0 ]
    then    
        echo "git stallation failed:"
        exit 1
    else
        echo "Git installation success"
    fi
else
    echo "Git already installled"
fi