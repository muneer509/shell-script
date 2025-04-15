#!/bin/bash
echo "All variables passed to the script: $@"
echo " Number of arguments passed to the script: $#"
echo "name of the script : $0"
echo "PID od the script: $$"
echo "exit status of the last command: $?"
sleep 100 &
echo "PID of the last background command: $!"
