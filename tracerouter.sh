#!/bin/bash
# Program name: tracerouter.sh
# Created by: J Alberto Arceo
#2018/7/13
date > thelog.txt
cat thelist.txt | while read output
do
    traceroute -m 15 "$output" >> thelog.txt
	echo -e "\nNext IP \n" >> thelog.txt
done
