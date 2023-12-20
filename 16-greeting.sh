#!/bin/bash
NAME=""
WISHES="good morning"
USAGE(){
    echo "USAGE::$(basename $0) -n <NAME> -w <WISHES>"
    echo "options::"
    echo "-n,specify the name(mandatory)"
    echo "-w,specify the wishes(optional).bydefault is good morning"
    echo "-h,display the help and exit"
}
while getopts ":n:w:h" opt ; do
case $opt in
n) NAME="$OPTARG";;
w) WISHES="$OPTARG";;
\?) echo "invalid options : -"$OPTARG" " >&2; USAGE ; exit ;;
:) USAGE; exit ;;
h) USAGE; exit;;
esac
done
if [ -z "$NAME" ] ; then
echo "error:: -n is mandatory"
USAGE
exit 1
fi
echo "hello $NAME , $WISHES , i have been learning devops"