#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
if [ $ID -ne 0 ]
then 
echo " $R pls run this script with root access $N"
exit 1
else
echo " u r root user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo -e "$2......$R.....failed....$N"
    else
    echo -e "$2....$G......success.....$N"
    fi
}

for PACKAGE in $@
do
yum list installed $PACKAGE &>> $LOGFILE
if [ $? -ne 0 ]
then
yum  install $PACKAGE -y &>> $LOGFILE
VALIDATE $? "installing $PACKAGE"
else
echo  -e " $PACKAGE is already installed.....$Y....skipping.....$N"
fi
done






