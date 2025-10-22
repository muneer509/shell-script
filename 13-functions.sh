#!/bin/bash
root=$(id -u)
if [ $root -ne 0 ]
then
    echo "Please try with Root access"
fi
validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed"
        exit 1
    else
        echo "$2 is success"
    fi
}
apt list --installed | grep -i git
if [ $? -ne 0 ]
then 
    echo "Installing Git"
    apt install git -y
    validate $? "installing git"
else
    echo "Git is already install"
fi
apt list --installed | grep -i mysql-server
if [ $? -ne 0 ]
then   
    echo " Installing mysql"
    apt install mysql-server -y
    validate $? "installing mysql"
else
    echo "mysql already installed"
fi
apt list --installed | grep -i nginx
if  $? -ne 0 ]
then
    echo "Installing nginx"
    apt install nginx -y
    validate $? "installing nginx"
else
    echo " nginx already installed"
fi
