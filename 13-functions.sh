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
# if [ $? -ne 0 ]
# then    
#     echo "Git not available, so installing it"
#     apt install git -y
#     if [ $? -ne 0 ]
#     then    
#         echo "git stallation failed:"
#         exit 1
#     else
#         echo "Git installation success"
#     fi
# else
#     echo "Git already installled"
# fi
