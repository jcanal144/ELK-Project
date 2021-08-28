#!/bin/bash

files=( /etc/passwd /etc/shadow )
for file in ${files[@]}
do
	ls -l $file
	echo are the permissions for $file
done
