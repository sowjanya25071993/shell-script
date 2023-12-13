#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name::$0"
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "error::$2....$R failed $N"
    else
    echo "$2............$G success $N"
    fi
}
if [ $ID -ne 0 ]
then
echo "$R error::pls run this script using root access $N"
else
echo "u r root user"
fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git"
