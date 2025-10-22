#!/bin/bash
command=$(date)
echo "Today date is:$command"
nginx_install=$(apt install nginx -y)
echo "${nginx_install}"