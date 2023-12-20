#!/bin/bash
FILE=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ ! -f $FILE ]
then 
echo -e "$R error:: $FILE doesn't exists....$N"
fi
while IFS = ":" read -r username password userID groupID useridinfo homedirectory shell
do 
echo "username is::$username"
echo "userid is::$userID"
echo "user full name is::$useridinfo"
done < $FILE