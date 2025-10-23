#!/bin/bash
LOG_FOLDER="/va/log/shell-script"
SCRIPT_name=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOG_FOLDER/$SCRIPT_name-$TIMESTAMP.log"
mkdir -p $LOG_FOLDER
id=$(id -u)
if [ $id -ne 0 ]
then    
    echo "Please try with root access" &>>$LOG_FILE
    exit 1
fi
if [ $# -eq 0 ]
then
    echo "Please enter the packages to install"
fi
validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed" &>>$LOG_FILE
    else    
        echo "$2 is Success" &>>$LOG_FILE
    fi
}

for package in $@
do
    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]
    then
        dnf install $package -y &>>$LOG_FILE
        validate $? "installing $package"
    else
        echo "$package is already available" &>>$LOG_FILE
done