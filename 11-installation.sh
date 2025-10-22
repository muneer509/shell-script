#!/bin/bash
ROOT=$(id -u)
echo "ID is:$ROOT"
if [ $ROOT -ne 0 ]
then
    echo "Please run with root access"
    exit 1
fi

apt update &&
apt install mysql-server 