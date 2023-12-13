#1/bin/bash
NUMBER1=$1
NUMBER2=$2
SUM=$(($NUMBER1 + $NUMBER2))
echo "addition of two numbers:$SUM"
echo "no.of args passed::$#"
echo "all args passed::$@"
echo "script name::$0"