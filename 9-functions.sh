#! /bin/bash

USERID=$(id -u)

DATE=$(date +%F)

ScriptName=$0

LOGFILE=/tmp/$ScriptName-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo -e "$R $2 Installation Failed ...$N"
    else
        echo -e "$G $2 Installation Success ...$N"
        
}

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Mysql"

yum install postifx -y &>> $LOGFILE

VALIDATE $? "Postfix"

yum install gmailx -y &>> $LOGFILE

VALIDATE $? "gmailx"