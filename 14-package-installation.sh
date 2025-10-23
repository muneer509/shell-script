#!/bin/bash
id=$(id -u)
if [ $id -ne 0 ]
then
    echo "Please try with Root"
fi
validate(){
    if [ $1 -ne 0 ]
    then    
        echo "$2 is failed"
    else
        echo "$2 is sucess"
    fi
}
for package_name in $@ # all args passed to script
do
    dnf list installed $package_name
    if [ $? -ne 0 ]
    then
        echo "As verified, $package_name is not available, So installing it."
        dnf install $package_name -y
        validate $? "Installing $package_name"

    else
        echo "$package_name is already installed"
    fi
done