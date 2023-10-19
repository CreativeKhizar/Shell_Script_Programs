#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];
then 
    echo "ERROR: Please run the script with root access"
    exit 1
fi

yum install mysqll -y

if [ $? -ne 0 ]
then
    echo "Error: Installation of mysqll Failed"
else
    echo "Installation of mysqll Success"
fi

yum install postfix -y

if [ $? -ne 0 ]; then
    echo "Error: Installation of postfix Failed"
else
    echo "Installation of postfix Success"
fi
