#!/bin/bash
user_id=$(id -u)
if [ $user_id -ne 0 ]
then
echo "Run this script with root priviliges"
exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y
    if [ $? -ne 0 ]
        then 
            echo "Git installation is not success.. check it"
            exit 1
        else    
            echo "Git installation is success"
    fi
else 
    echo "Git is already installed, nothing to do.."
fi


