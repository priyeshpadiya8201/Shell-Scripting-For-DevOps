#!/bin/bash

echo "provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid value"
esac
