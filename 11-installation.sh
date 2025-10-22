#!/bin/bash
ROOT=$(id -u)
echo "ID is:$ROOT"
if [ $ROOT -ne 0 ]
then
    echo "Please run with root access"
    exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Git installation faied"
        exit 1
    else
        echo "Git installation success"
else
    echo "Git is already installed"
fi
dnf list installed mysql-server
if [ $? -ne 0 ]
then    
    echo "Installing mysql-server"
    dnf install mysql-server -y
    if [ $? -ne 0 ]
    then    
        echo "mysql installation failed"
        exit 1
    else
        echo "mysql installation sucess"
    fi
else
    echo "mysql already installed"
fi