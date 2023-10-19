#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: Please Run this Script with root access"
    exit 1
else
    yum install mysql -y
fi