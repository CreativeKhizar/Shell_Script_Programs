#! /bin/bash

APP_LOGS_DIR="/home/centos/app-logs"

DATE=$(date +%F:%H:%M:%S)

LOGDIR="/home/centos/Shell-Script-logs"

ScriptName=$0

LOGFILE=$LOGDIR/$ScriptName-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

while read line
do
    echo "Deleting $line " &>> $LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE