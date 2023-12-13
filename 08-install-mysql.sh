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
if [ $? -eq 0 ]
then 
echo "installing mysql is success"
else
echo " error:: installing mysql is failed"
exit 1
fi