#!/bin/bash
SOURCE_DIR=/home/ec2-user/logs
RC="\e[31m"
GC="\e[32m"
NC="\e[0m"
YC="\e[33m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR $GC exists $NC"
else
    echo -e "$SOURCE_DIR $RC does not exists $NC"
FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)    
echo "Files are: $FILES"
while IFS=read -r file
do
    echo "Deleting file: $file"
    rm -rf $file
done <<< $FILES