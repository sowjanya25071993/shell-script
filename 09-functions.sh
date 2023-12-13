#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name::$0"
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "error::$2....failed"
    else
    echo "$2............success"
    fi
}
if [ $ID -ne 0 ]
then
echo "error::pls run this script using root access"
else
echo "u r root user"
fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git"
