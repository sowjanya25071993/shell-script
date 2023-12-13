#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "error::pls run this script with root access"
else
echo "u r root user"
fi