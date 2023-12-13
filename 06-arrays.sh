#!/bin/bash
FRUITS=("apple" "banana" "mango")
echo "first value:${FRUITS[0]}"
echo "2nd value:${FRUITS[1]}"
echo "3rd value:${FRUITS[2]}"
echo "all fruits:${FRUITS[@]}"
echo "length of the array is::$#{FRUITS}"
echo "length of the array is::count($FRUITS)"
