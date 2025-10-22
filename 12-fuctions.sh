#!/bin/bash
ROOT=$(id -u)

if [ $ROOT -ne 0 ]
then
    echo "Please run with root access"
    exit 1
fi
installation_validation(){
    if [ $1 -ne 0 ]
    then
        echo "$2 already installed:"
    fi
        }

dnf list installed git

 
installation_validation $? "Git"
dnf list installed nginx
installation_validation $? "Nginx"

