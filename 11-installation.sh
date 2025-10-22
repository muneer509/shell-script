#!/bin/bash
ROOT=$(id -u)
echo "ID is:$ROOT"
if [ $ROOT -ne 0 ]
then
    echo "Please run with root access"
fi
exit 1
apt update &&
apt install mysql-server 