#! /bin/bash
if [-z "$pname" ]
then 
	echo "You have not entered the string"
	exit 1
else
	echo "Enter the file to be used: \c"
	read flname
	if [ ! -n "$flname" ] ; then
		echo "You have not entered the filename" ; exit 2
	else
		exit;
