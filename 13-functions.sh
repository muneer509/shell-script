#!/bin/bash
root=(id -u)
if [ $root -ne 0 ]
then
    echo "Please try with Root access"
fi