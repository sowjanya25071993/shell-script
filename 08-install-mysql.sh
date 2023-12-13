#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "error::pls run this script with root access"
exit 1
else
echo "u r root user"
fi
yum install mysql -y
if [ $? -ne 0 ]
then 
echo "installing mysql is failed"
exit 1
else
echo " installing mysql is success"
fi