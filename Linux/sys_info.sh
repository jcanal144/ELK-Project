#!/bin/bash

pat="~/research/"

if [ -f ~/research/sys_info.txt ]
   > ~/research/sys_info.txt
fi
echo "A Quick System Audit Script" >  $patsys_info.txt
date >> $patsys_info.txt
echo "" >> $patsys_info.txt
echo "Machine Type Info:" >> $patsys_info.txt
echo $MACHTYPE >> $patsys_info.txt
echo -e "Uname info: $(uname -a) \n" >> $patsys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> $patsys_info.txt
echo "Hostname: $(hostname -s) " >> $patsys_info.txt
echo -e "\n777 Files:" >>  $patsys_info.txt
find / -type f -perm 777 >> $patsys_info.txt
echo -e "\nTop 10 Processes" >> $patsys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $patsys_info.txt
