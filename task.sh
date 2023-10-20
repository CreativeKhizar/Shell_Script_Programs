#! /bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
DATE=$(date +%F)
ScriptName=$0
LOGFILE=/tmp/$ScriptName-$DATE.log

VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo -e "$R $2 Installation Failed... $N"
    else
        echo -e "$G $2 Installation Success... $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo -e "$R Error: Please Run the Script with root Access$N"
    exit 1
fi


for i in $@
do
    yum list installed $i &>> $LOGFILE

    if [ $? -eq 0 ]
    then
        echo -e "$Y $i Already Installed $N"
    else
        yum install $i -y &>> $LOGFILE
        VALIDATE $? $i
    fi
done
