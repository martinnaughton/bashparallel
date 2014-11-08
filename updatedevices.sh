#!/bin/bash

echo Transferring $1
# this will transfer the file and unzip it host machine
echo $1 | parallel --sshloginfile ipaddresses  --transfer "rm $1; gunzip {}"
