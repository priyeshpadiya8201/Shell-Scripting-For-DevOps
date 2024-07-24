#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -gt 80 ]]
then
	echo "1st Division"
elif [[ $marks -gt 60 ]]
then
	echo "2nd Division"
elif [[ $marks -gt 40 ]]
then
	echo "3rd Division"
else
	echo "FAIL......"
fi
