#!/bin/bash

echo Transferring $1
# this will transfer the file and unzip it host machine
#echo $1 | parallel --sshloginfile ipaddresses  --transfer gunzip {}

#another way of doing it with out the echo command
parallel --sshloginfile ipaddresses  --transfer gunzip ::: $1 
